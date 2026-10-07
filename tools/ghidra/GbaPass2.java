// Second pass: drop false functions found in ROM data, then hunt for
// missed Thumb functions inside the real code region.
// Args: <code end address> (default 0x08054000)
import ghidra.app.script.GhidraScript;
import ghidra.app.cmd.disassemble.ArmDisassembleCommand;
import ghidra.program.model.address.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.mem.*;
import java.util.*;

public class GbaPass2 extends GhidraScript {
    static final long ROM_BASE = 0x08000000L;

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        long codeEnd = args.length > 0 ? Long.decode(args[0]) : 0x08054000L;
        Memory mem = currentProgram.getMemory();
        MemoryBlock rom = mem.getBlock(toAddr(ROM_BASE));
        long romEnd = rom.getEnd().getOffset();

        // 1) Remove everything past the code region.
        int removed = 0;
        AddressSet data = new AddressSet(toAddr(codeEnd), rom.getEnd());
        for (Function f : new ArrayList<Function>(toList(currentProgram.getFunctionManager().getFunctions(data, true)))) {
            removeFunction(f); removed++;
        }
        clearListing(data);
        println("Removed " + removed + " false functions past " + Long.toHexString(codeEnd));

        byte[] buf = new byte[(int) (romEnd - ROM_BASE + 1)];
        mem.getBytes(toAddr(ROM_BASE), buf);

        // 2) Odd pointers (anywhere in ROM) into the code region -> Thumb functions.
        Listing listing = currentProgram.getListing();
        int seeded = 0;
        for (int i = 0; i + 4 <= buf.length; i += 4) {
            long v = (buf[i] & 0xFFL) | ((buf[i+1] & 0xFFL) << 8) | ((buf[i+2] & 0xFFL) << 16) | ((buf[i+3] & 0xFFL) << 24);
            if ((v & 1) == 0 || v < ROM_BASE || v >= codeEnd) continue;
            if (thumbFunc(v & ~1L, listing)) seeded++;
        }
        println("Seeded " + seeded + " Thumb functions from pointers into code");

        // 3) push {..,lr} prologues in still-undefined code-region bytes.
        int pro = 0;
        for (long t = ROM_BASE; t < codeEnd; t += 2) {
            int o = (int) (t - ROM_BASE);
            if ((buf[o+1] & 0xFF) != 0xB5) continue;
            if (thumbFunc(t, listing)) pro++;
        }
        println("Seeded " + pro + " Thumb functions from push prologues");
    }

    boolean thumbFunc(long addr, Listing listing) throws Exception {
        Address at = toAddr(addr);
        if (getFunctionAt(at) != null) return false;
        if (listing.getInstructionContaining(at) != null) return false;  // inside known code
        Data d = listing.getDefinedDataContaining(at);
        if (d != null && d.isDefined()) return false;                    // literal pool etc.
        new ArmDisassembleCommand(at, null, true).applyTo(currentProgram, monitor);
        if (getInstructionAt(at) == null) return false;
        return createFunction(at, null) != null;
    }

    static <T> List<T> toList(Iterable<T> it) { List<T> l = new ArrayList<>(); for (T x : it) l.add(x); return l; }
}
