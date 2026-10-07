// Post-analysis: decompile every function and write C output.
// Args: <output dir> (default: ./decomp)
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.lang.Register;
import java.io.*;
import java.math.BigInteger;
import java.nio.file.*;
import java.util.*;

public class ExportC extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        Path out = Paths.get(args.length > 0 ? args[0] : "decomp");
        Path funcsDir = out.resolve("funcs");
        Files.createDirectories(funcsDir);
        try (DirectoryStream<Path> ds = Files.newDirectoryStream(funcsDir, "*.c")) {
            for (Path p : ds) Files.delete(p);
        }

        DecompileOptions opts = new DecompileOptions();
        DecompInterface ifc = new DecompInterface();
        ifc.setOptions(opts);
        ifc.toggleCCode(true);
        ifc.toggleSyntaxTree(false);
        ifc.setSimplificationStyle("decompile");
        if (!ifc.openProgram(currentProgram)) {
            throw new RuntimeException("Decompiler failed to open program: " + ifc.getLastMessage());
        }

        Register tmode = currentProgram.getRegister("TMode");
        FunctionManager fm = currentProgram.getFunctionManager();
        int total = fm.getFunctionCount(), done = 0, ok = 0, failed = 0;

        try (PrintWriter all = new PrintWriter(Files.newBufferedWriter(out.resolve("shining_soul.c")));
             PrintWriter csv = new PrintWriter(Files.newBufferedWriter(out.resolve("functions.csv")))) {
            all.println("/* Shining Soul (USA) - Ghidra decompilation (raw, unedited) */");
            all.println("#include \"gba_types.h\"\n");
            csv.println("address,name,size,mode,status");

            for (Function f : fm.getFunctions(true)) {
                if (monitor.isCancelled()) break;
                if (f.isExternal() || f.isThunk() && f.getBody().getNumAddresses() == 0) continue;
                String addr = f.getEntryPoint().toString();
                BigInteger tm = currentProgram.getProgramContext().getValue(tmode, f.getEntryPoint(), false);
                String mode = (tm != null && tm.signum() != 0) ? "thumb" : "arm";

                DecompileResults res = ifc.decompileFunction(f, 60, monitor);
                String status;
                String code;
                if (res != null && res.decompileCompleted() && res.getDecompiledFunction() != null) {
                    code = res.getDecompiledFunction().getC();
                    status = "ok"; ok++;
                } else {
                    code = "/* decompile failed: " + (res == null ? "null" : res.getErrorMessage()).replace("*/", "* /") + " */\n";
                    status = "failed"; failed++;
                }
                String header = "/* " + addr + " " + f.getName() + " (" + mode + ", " + f.getBody().getNumAddresses() + " bytes) */\n";
                all.print(header); all.println(code);
                Files.writeString(funcsDir.resolve(addr + "_" + f.getName().replaceAll("[^A-Za-z0-9_]", "_") + ".c"), header + code);
                csv.println(addr + "," + f.getName() + "," + f.getBody().getNumAddresses() + "," + mode + "," + status);

                if (++done % 250 == 0) println("Decompiled " + done + "/" + total);
            }
        } finally {
            ifc.dispose();
        }
        println("ExportC done: " + done + " functions, " + ok + " ok, " + failed + " failed -> " + out.toAbsolutePath());
    }
}
