// Third pass: undo bogus no-return flags caused by the task-switch routine,
// recover code after those calls, add the ARM IRQ handler, name known routines.
import ghidra.app.script.GhidraScript;
import ghidra.app.cmd.disassemble.ArmDisassembleCommand;
import ghidra.app.cmd.function.CreateFunctionCmd;
import ghidra.program.model.address.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.symbol.*;
import java.util.*;

public class GbaPass3 extends GhidraScript {
    @Override
    public void run() throws Exception {
        // The task switcher (task_yield) swaps stacks, which this analyzer
        // misreads as "never returns" and then propagates to hundreds of callers.
        setAnalysisOption(currentProgram, "Non-Returning Functions - Discovered", "false");
        // False function in the ROM header (Nintendo logo bytes).
        Function hdr = getFunctionAt(toAddr(0x08000006L));
        if (hdr != null) { removeFunction(hdr); clearListing(toAddr(0x08000004L), toAddr(0x080000BFL)); }

        // ARM IRQ handler (address written to INTR_VECTOR by crt0).
        Address irq = toAddr(0x08000104L);
        clearListing(irq, irq.add(3));
        new ArmDisassembleCommand(irq, null, false).applyTo(currentProgram, monitor);
        if (getFunctionAt(irq) == null) createFunction(irq, "IntrMain");

        rename(0x080000c0L, "crt0");
        rename(0x08000000L, "_start");
        rename(0x08000624L, "AgbMain");
        rename(0x080003fcL, "task_yield");

        // Clear no-return everywhere and re-disassemble fallthroughs of calls to them.
        FunctionManager fm = currentProgram.getFunctionManager();
        ReferenceManager rm = currentProgram.getReferenceManager();
        Listing listing = currentProgram.getListing();
        List<Function> nr = new ArrayList<>();
        for (Function f : fm.getFunctions(true)) if (f.hasNoReturn()) nr.add(f);
        Set<Function> touched = new HashSet<>();
        int fixed = 0;
        for (Function f : nr) {
            if (f.getEntryPoint().getOffset() == 0x080000c0L || f.getName().equals("AgbMain")) continue;
            f.setNoReturn(false);
            for (Reference r : rm.getReferencesTo(f.getEntryPoint())) {
                if (!r.getReferenceType().isCall()) continue;
                Instruction ins = listing.getInstructionAt(r.getFromAddress());
                if (ins == null) continue;
                ins.setFlowOverride(FlowOverride.NONE);
                ins.clearFallThroughOverride();
                Address ft = ins.getMaxAddress().add(1);
                if (listing.getInstructionAt(ft) == null) {
                    boolean thumb = ins.getLength() == 2 || ins.getPrototype().getLanguage() != null && isThumb(ins);
                    new ArmDisassembleCommand(ft, null, thumb).applyTo(currentProgram, monitor);
                }
                Function caller = fm.getFunctionContaining(r.getFromAddress());
                if (caller != null) touched.add(caller);
            }
            fixed++;
        }
        for (Function c : touched) CreateFunctionCmd.fixupFunctionBody(currentProgram, c, monitor);
        println("Cleared no-return on " + fixed + " functions, fixed up " + touched.size() + " callers");
    }

    boolean isThumb(Instruction ins) {
        var v = ins.getValue(currentProgram.getRegister("TMode"), false);
        return v != null && v.signum() != 0;
    }

    void rename(long addr, String name) throws Exception {
        Function f = getFunctionAt(toAddr(addr));
        if (f != null) f.setName(name, SourceType.USER_DEFINED);
    }
}
