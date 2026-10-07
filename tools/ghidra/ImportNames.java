// Apply the repo's names to a Ghidra program.
// Args: <repo root>   (reads config/names.txt, config/ram_symbols.txt, config/io_regs.txt)
import ghidra.app.script.GhidraScript;
import ghidra.app.cmd.disassemble.ArmDisassembleCommand;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.SourceType;
import java.nio.file.*;
import java.util.*;

public class ImportNames extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        Path root = Paths.get(args.length > 0 ? args[0] : askDirectory("Repo root", "OK").getPath());
        int f = 0, l = 0;
        for (String[] e : read(root.resolve("config/names.txt"))) {
            Address a = toAddr(Long.parseLong(e[0], 16));
            Function fn = getFunctionAt(a);
            if (fn == null) {
                if (getInstructionAt(a) == null)
                    new ArmDisassembleCommand(a, null, true).applyTo(currentProgram, monitor);
                fn = createFunction(a, e[1]);
            }
            if (fn != null) { fn.setName(e[1], SourceType.USER_DEFINED); f++; }
        }
        for (String file : new String[] {"config/ram_symbols.txt", "config/io_regs.txt"}) {
            for (String[] e : read(root.resolve(file))) {
                createLabel(toAddr(Long.parseLong(e[0], 16)), e[1], true, SourceType.USER_DEFINED);
                l++;
            }
        }
        println("ImportNames: " + f + " functions, " + l + " labels");
    }

    List<String[]> read(Path p) throws Exception {
        List<String[]> out = new ArrayList<>();
        for (String line : Files.readAllLines(p)) {
            String s = line.split("#", 2)[0].trim();
            if (s.isEmpty()) continue;
            String[] parts = s.split("\\s+");
            if (parts.length >= 2) out.add(new String[] {parts[0], parts[1]});
        }
        return out;
    }
}
