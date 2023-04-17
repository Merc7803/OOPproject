package Test;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class testGUI extends  JFrame{
    private JPanel PanelForTest;
    private JTextField txtName;
    private JButton Clickthis;
    public testGUI() {
        Clickthis.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(Clickthis, "Hello " + txtName.getText());
            }
        });
    }

    public static void main(String[] args){
        testGUI t = new testGUI();
        t.setContentPane(t.PanelForTest);
        t.setTitle("Hello");
        t.setSize(300,400);
        t.setVisible(true);
        t.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
