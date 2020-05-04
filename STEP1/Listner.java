import org.antlr.v4.runtime.Vocabulary;
import org.antlr.v4.runtime.tree.TerminalNode;

import java.io.FileWriter;
import java.io.IOException;


public class Listner extends LITTLEBaseListener {

    public Vocabulary v;
    public FileWriter f;

    Listner(Vocabulary voc, String outputPath) {
        this.v = voc;
    }

    @Override
    public void visitTerminal(TerminalNode node) {
        super.visitTerminal(node);

        try {
            if(v.getSymbolicName(node.getSymbol().getType()).equals("EOF")) {

            } else {
                System.out.println("Token Type: " + v.getSymbolicName(node.getSymbol().getType()));
                System.out.println("Value: " + node.getText());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
