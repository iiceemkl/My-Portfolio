// Name: Mangkhales
// ID: 6188055

import javax.swing.*;
import java.awt.Component;
import java.awt.event.*;

public class MainFrame extends JFrame {
	
	private JPanel panel = new JPanel();
	private JTextField txtWeight  = new JTextField(10);
	private JTextField txtHeight = new JTextField(10);
	private JLabel lbWeight = new JLabel("Weight (kg)");
	private JLabel lbHeight = new JLabel("Height (cm)");
	private JButton btnCal = new JButton("Calculate");
	private JTextField txtBMI = new JTextField(10);
	private JLabel lbBMI = new JLabel("BMI");
	
	public MainFrame() {
		super("BMI Calculator");
		
		panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
		lbWeight.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(lbWeight);
		txtWeight.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(txtWeight);
		lbHeight.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(lbHeight);
		txtHeight.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(txtHeight);
		btnCal.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(btnCal);
		lbBMI.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(lbBMI);
		txtBMI.setAlignmentX(Component.CENTER_ALIGNMENT);
		panel.add(txtBMI);
		
		// Add listener to the btnCal button
		// YOUR CODE GOES HERE
		btnCal.addActionListener(new BMICalListener());
		JFrame frame = new JFrame("BMI Calculator");
		frame.setSize(300,200);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.add(panel);
		frame.setVisible(true);
		
		// Add panel to this JFrame, set size to 300 x 200, set close operation, and set visible
		// YOUR CODE GOES HERE
		
		
		
	}
	
	 // Create BMICalListener class that implements ActionListener interface
	// BMI Formula: weight (kg) / [height (m)]2
	
	
	// YOUR CODE GOES HERE
	class BMICalListener implements ActionListener {

		@Override
		public void actionPerformed(ActionEvent e) {
			// TODO Auto-generated method stub
			try {
				double weight = Integer.parseInt(txtWeight.getText());
				double height = Integer.parseInt(txtHeight.getText());
				double solution = weight/Math.pow(height/100, 2.0);
				txtBMI.setText(Double.toString(solution));
			}
			catch(NumberFormatException ex){
				System.out.println(ex);
				displayPopupMessage("Invalid Input");
				}
		}
		
	}
	
	
	public void displayPopupMessage(String errorMessage){
		JOptionPane.showMessageDialog(this, errorMessage);
	}
	
	public static void main(String[] args) {
		MainFrame app = new MainFrame();
		
	}
}