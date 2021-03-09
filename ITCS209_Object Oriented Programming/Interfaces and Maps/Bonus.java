package lab08;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;

import javax.swing.JFrame;

public class Bonus extends Applet{
	
	 public void paint(Graphics graphics) {
	        /* We would be using this method only for the sake
	         * of brevity throughout the current section. Note
	         * that the Graphics class has been acquired along
	         * with the method that we overrode. */
		 	//graphics.setColor(Color.black);
	        //graphics.drawLine(40, 30, 330, 380);
		 	graphics.setColor(Color.black);
		 	graphics.fillRect(100, 100, 100, 100);
		 	graphics.setColor(Color.black);
		 	graphics.drawRect(100, 100, 100, 100);
		 	graphics.setColor(Color.green);
	        graphics.drawOval(10, 10, 100, 100);
	        graphics.setColor(Color.red);
	        graphics.drawLine(200, 200, 300, 300);
	        
		 	
	    }

	    public static void main(String[] args) {
	        Bonus canvas = new Bonus();
	        JFrame frame = new JFrame();
	        frame.setSize(400, 400);
	        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	        frame.getContentPane().add(canvas);
	        frame.setVisible(true);
	    }
	
}
