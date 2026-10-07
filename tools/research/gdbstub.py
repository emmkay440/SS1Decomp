"""Minimal GDB Remote Serial Protocol client for mGBA's debug server
(start mGBA with `-g`, or Tools > Start GDB server in the Qt UI)."""
import socket, time


class GdbStub:
    def __init__(self, host="127.0.0.1", port=2345, timeout=10.0):
        deadline = time.time() + timeout
        while True:
            try:
                self.sock = socket.create_connection((host, port), timeout=timeout)
                break
            except OSError:
                if time.time() > deadline:
                    raise
                time.sleep(0.2)
        self.sock.settimeout(None)
        # Many tiny request/reply packets: without these each round trip can
        # stall ~40 ms on Nagle / delayed-ACK interaction.
        self.sock.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
        self.quickack = hasattr(socket, "TCP_QUICKACK")
        self.buf = b""

    # -- framing --
    def _send(self, payload):
        data = payload.encode() if isinstance(payload, str) else payload
        pkt = b"$" + data + b"#" + b"%02x" % (sum(data) & 0xFF)
        while True:
            self.sock.sendall(pkt)
            ack = self._readbyte()
            if ack == b"+":
                return
            if ack != b"-":
                # some stubs reply directly; push it back
                self.buf = ack + self.buf
                return

    def _readbyte(self):
        while not self.buf:
            if self.quickack:
                self.sock.setsockopt(socket.IPPROTO_TCP, socket.TCP_QUICKACK, 1)
            chunk = self.sock.recv(65536)
            if not chunk:
                raise ConnectionError("debug server closed the connection")
            self.buf += chunk
        b, self.buf = self.buf[:1], self.buf[1:]
        return b

    def _recv(self):
        while self._readbyte() != b"$":
            pass
        data = b""
        while True:
            c = self._readbyte()
            if c == b"#":
                self._readbyte(); self._readbyte()
                break
            data += c
        self.sock.sendall(b"+")
        return data.decode(errors="replace")

    def cmd(self, payload):
        self._send(payload)
        return self._recv()

    # -- commands --
    def interrupt(self):
        """Pause a running target; returns the stop reply."""
        self.sock.sendall(b"\x03")
        return self._recv()

    def cont(self):
        """Resume; blocks until the target stops (breakpoint, watchpoint, interrupt)."""
        self._send("c")
        return self._recv()

    def cont_nowait(self):
        self._send("c")

    def wait_stop(self, timeout=None):
        self.sock.settimeout(timeout)
        try:
            return self._recv()
        except socket.timeout:
            return None
        finally:
            self.sock.settimeout(None)

    def regs(self):
        """r0-r15 as ints."""
        g = self.cmd("g")
        return [int.from_bytes(bytes.fromhex(g[i * 8:i * 8 + 8]), "little") for i in range(16)]

    def read(self, addr, length):
        out = b""
        while length:
            n = min(length, 0x800)
            r = self.cmd(f"m{addr:x},{n:x}")
            if r.startswith("E"):
                raise IOError(f"read 0x{addr:08X}: {r}")
            out += bytes.fromhex(r)
            addr += n
            length -= n
        return out

    def breakpoint(self, addr, thumb=True, on=True):
        return self.cmd(f"{'Z' if on else 'z'}0,{addr:x},{2 if thumb else 4}")

    def watchpoint(self, addr, size, kind="write", on=True):
        t = {"write": 2, "read": 3, "access": 4}[kind]
        return self.cmd(f"{'Z' if on else 'z'}{t},{addr:x},{size:x}")

    def close(self):
        try:
            self.sock.close()
        except OSError:
            pass
