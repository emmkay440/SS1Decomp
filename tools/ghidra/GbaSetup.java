// Pre-analysis setup for a GBA ROM loaded as raw binary at 0x08000000.
// Creates the GBA memory map, labels IO registers, and seeds ARM/Thumb code.
import ghidra.app.script.GhidraScript;
import ghidra.app.cmd.disassemble.ArmDisassembleCommand;
import ghidra.program.model.address.*;
import ghidra.program.model.lang.Register;
import ghidra.program.model.listing.*;
import ghidra.program.model.mem.*;
import ghidra.program.model.symbol.SourceType;
import java.math.BigInteger;
import java.util.*;

public class GbaSetup extends GhidraScript {

    static final long ROM_BASE = 0x08000000L;

    Address a(long off) { return toAddr(off); }

    @Override
    public void run() throws Exception {
        Memory mem = currentProgram.getMemory();
        MemoryBlock rom = mem.getBlock(a(ROM_BASE));
        rom.setName("ROM");
        rom.setRead(true); rom.setWrite(false); rom.setExecute(true);
        long romEnd = rom.getEnd().getOffset();

        makeBlock("BIOS",  0x00000000L, 0x4000,   false, true);
        makeBlock("EWRAM", 0x02000000L, 0x40000,  false, true);
        makeBlock("IWRAM", 0x03000000L, 0x8000,   false, true);
        makeBlock("IO",    0x04000000L, 0x400,    true,  false);
        makeBlock("PAL",   0x05000000L, 0x400,    false, false);
        makeBlock("VRAM",  0x06000000L, 0x18000,  false, false);
        makeBlock("OAM",   0x07000000L, 0x400,    false, false);
        makeBlock("SRAM",  0x0E000000L, 0x10000,  false, false);

        labelIo();
        createLabel(a(0x03007FFCL), "INTR_VECTOR", true, SourceType.USER_DEFINED);
        createLabel(a(ROM_BASE + 0x04), "rom_header_logo", true, SourceType.USER_DEFINED);
        createLabel(a(ROM_BASE + 0xA0), "rom_header_title", true, SourceType.USER_DEFINED);

        // ARM entry: b at 0x08000000 -> crt0 at 0x080000C0.
        Register tmode = currentProgram.getRegister("TMode");
        ProgramContext ctx = currentProgram.getProgramContext();
        armCode(ROM_BASE, false, "_start");
        armCode(ROM_BASE + 0xC0, false, "crt0");

        // crt0 loads AgbMain (Thumb pointer) from its literal pool and bx's to it.
        // Seed Thumb functions from:
        //  1) 32-bit words in ROM that are odd pointers into ROM landing on a push {..,lr}
        //  2) bl targets reached during analysis (Ghidra handles these itself)
        int seeded = 0;
        Set<Long> seen = new HashSet<>();
        byte[] buf = new byte[(int) (romEnd - ROM_BASE + 1)];
        mem.getBytes(a(ROM_BASE), buf);
        for (int i = 0; i + 4 <= buf.length; i += 4) {
            long v = (buf[i] & 0xFFL) | ((buf[i+1] & 0xFFL) << 8) | ((buf[i+2] & 0xFFL) << 16) | ((buf[i+3] & 0xFFL) << 24);
            if ((v & 1) == 0 || v < ROM_BASE || v > romEnd) continue;
            long t = v & ~1L;
            int o = (int) (t - ROM_BASE);
            if (o + 1 >= buf.length) continue;
            if ((buf[o+1] & 0xFF) != 0xB5) continue;   // push {..., lr}
            if (!seen.add(t)) continue;
            if (armCode(t, true, null)) seeded++;
        }
        println("Seeded " + seeded + " Thumb functions from ROM pointers");

        // Also seed ARM pointers into IWRAM-copied/ARM code? ARM code in ROM is rare; skip.
    }

    void makeBlock(String name, long start, long size, boolean volatil, boolean write) throws Exception {
        Memory mem = currentProgram.getMemory();
        if (mem.getBlock(a(start)) != null) return;
        MemoryBlock b = mem.createUninitializedBlock(name, a(start), size, false);
        b.setRead(true); b.setWrite(write || volatil); b.setExecute(false);
        b.setVolatile(volatil);
    }

    boolean armCode(long addr, boolean thumb, String name) throws Exception {
        Address at = a(addr);
        if (getFunctionAt(at) != null) return false;
        ArmDisassembleCommand cmd = new ArmDisassembleCommand(at, null, thumb);
        cmd.applyTo(currentProgram, monitor);
        if (getInstructionAt(at) == null) return false;
        Function f = createFunction(at, name);
        return f != null;
    }

    void labelIo() throws Exception {
        Object[][] regs = {
            {0x000L,"REG_DISPCNT"},{0x004L,"REG_DISPSTAT"},{0x006L,"REG_VCOUNT"},
            {0x008L,"REG_BG0CNT"},{0x00AL,"REG_BG1CNT"},{0x00CL,"REG_BG2CNT"},{0x00EL,"REG_BG3CNT"},
            {0x010L,"REG_BG0HOFS"},{0x012L,"REG_BG0VOFS"},{0x014L,"REG_BG1HOFS"},{0x016L,"REG_BG1VOFS"},
            {0x018L,"REG_BG2HOFS"},{0x01AL,"REG_BG2VOFS"},{0x01CL,"REG_BG3HOFS"},{0x01EL,"REG_BG3VOFS"},
            {0x020L,"REG_BG2PA"},{0x022L,"REG_BG2PB"},{0x024L,"REG_BG2PC"},{0x026L,"REG_BG2PD"},
            {0x028L,"REG_BG2X"},{0x02CL,"REG_BG2Y"},{0x030L,"REG_BG3PA"},{0x032L,"REG_BG3PB"},
            {0x034L,"REG_BG3PC"},{0x036L,"REG_BG3PD"},{0x038L,"REG_BG3X"},{0x03CL,"REG_BG3Y"},
            {0x040L,"REG_WIN0H"},{0x042L,"REG_WIN1H"},{0x044L,"REG_WIN0V"},{0x046L,"REG_WIN1V"},
            {0x048L,"REG_WININ"},{0x04AL,"REG_WINOUT"},{0x04CL,"REG_MOSAIC"},
            {0x050L,"REG_BLDCNT"},{0x052L,"REG_BLDALPHA"},{0x054L,"REG_BLDY"},
            {0x060L,"REG_SOUND1CNT_L"},{0x062L,"REG_SOUND1CNT_H"},{0x064L,"REG_SOUND1CNT_X"},
            {0x068L,"REG_SOUND2CNT_L"},{0x06CL,"REG_SOUND2CNT_H"},
            {0x070L,"REG_SOUND3CNT_L"},{0x072L,"REG_SOUND3CNT_H"},{0x074L,"REG_SOUND3CNT_X"},
            {0x078L,"REG_SOUND4CNT_L"},{0x07CL,"REG_SOUND4CNT_H"},
            {0x080L,"REG_SOUNDCNT_L"},{0x082L,"REG_SOUNDCNT_H"},{0x084L,"REG_SOUNDCNT_X"},
            {0x088L,"REG_SOUNDBIAS"},{0x090L,"REG_WAVE_RAM"},{0x0A0L,"REG_FIFO_A"},{0x0A4L,"REG_FIFO_B"},
            {0x0B0L,"REG_DMA0SAD"},{0x0B4L,"REG_DMA0DAD"},{0x0B8L,"REG_DMA0CNT"},
            {0x0BCL,"REG_DMA1SAD"},{0x0C0L,"REG_DMA1DAD"},{0x0C4L,"REG_DMA1CNT"},
            {0x0C8L,"REG_DMA2SAD"},{0x0CCL,"REG_DMA2DAD"},{0x0D0L,"REG_DMA2CNT"},
            {0x0D4L,"REG_DMA3SAD"},{0x0D8L,"REG_DMA3DAD"},{0x0DCL,"REG_DMA3CNT"},
            {0x100L,"REG_TM0CNT"},{0x104L,"REG_TM1CNT"},{0x108L,"REG_TM2CNT"},{0x10CL,"REG_TM3CNT"},
            {0x120L,"REG_SIODATA32"},{0x128L,"REG_SIOCNT"},{0x12AL,"REG_SIODATA8"},
            {0x130L,"REG_KEYINPUT"},{0x132L,"REG_KEYCNT"},{0x134L,"REG_RCNT"},
            {0x200L,"REG_IE"},{0x202L,"REG_IF"},{0x204L,"REG_WAITCNT"},{0x208L,"REG_IME"},
            {0x300L,"REG_POSTFLG"},
        };
        for (Object[] r : regs) {
            createLabel(a(0x04000000L + (Long) r[0]), (String) r[1], true, SourceType.USER_DEFINED);
        }
    }
}
