// Remove the bogus Thumb function inside IntrMain and name BIOS SWI wrappers
// (Thumb "swi N; bx lr" stubs).
import ghidra.app.script.GhidraScript;
import ghidra.program.model.listing.*;
import ghidra.program.model.symbol.SourceType;
import java.util.*;

public class GbaNameSwi extends GhidraScript {
    static final Map<Integer, String> SWI = Map.ofEntries(
        Map.entry(0x00, "SoftReset"), Map.entry(0x01, "RegisterRamReset"), Map.entry(0x02, "Halt"),
        Map.entry(0x03, "Stop"), Map.entry(0x04, "IntrWait"), Map.entry(0x05, "VBlankIntrWait"),
        Map.entry(0x06, "Div"), Map.entry(0x07, "DivArm"), Map.entry(0x08, "Sqrt"),
        Map.entry(0x09, "ArcTan"), Map.entry(0x0A, "ArcTan2"), Map.entry(0x0B, "CpuSet"),
        Map.entry(0x0C, "CpuFastSet"), Map.entry(0x0D, "GetBiosChecksum"), Map.entry(0x0E, "BgAffineSet"),
        Map.entry(0x0F, "ObjAffineSet"), Map.entry(0x10, "BitUnPack"), Map.entry(0x11, "LZ77UnCompWram"),
        Map.entry(0x12, "LZ77UnCompVram"), Map.entry(0x13, "HuffUnComp"), Map.entry(0x14, "RLUnCompWram"),
        Map.entry(0x15, "RLUnCompVram"), Map.entry(0x16, "Diff8bitUnFilterWram"),
        Map.entry(0x17, "Diff8bitUnFilterVram"), Map.entry(0x18, "Diff16bitUnFilter"),
        Map.entry(0x19, "SoundBias"), Map.entry(0x1F, "MidiKey2Freq"), Map.entry(0x25, "MultiBoot"),
        Map.entry(0x28, "SoundDriverVSyncOff"), Map.entry(0x29, "SoundDriverVSyncOn"));

    @Override
    public void run() throws Exception {
        Function bogus = getFunctionAt(toAddr(0x08000106L));
        if (bogus != null) removeFunction(bogus);

        int named = 0;
        for (Function f : currentProgram.getFunctionManager().getFunctions(true)) {
            if (f.getSymbol().getSource() == SourceType.USER_DEFINED) continue;
            byte[] b = getBytes(f.getEntryPoint(), 4);
            if ((b[1] & 0xFF) == 0xDF && (b[2] & 0xFF) == 0x70 && (b[3] & 0xFF) == 0x47) {
                String n = SWI.getOrDefault(b[0] & 0xFF, String.format("Swi_%02X", b[0] & 0xFF));
                if (getGlobalFunctions(n).isEmpty()) { f.setName(n, SourceType.USER_DEFINED); named++; }
            }
        }
        println("Named " + named + " SWI wrappers");
    }
}
