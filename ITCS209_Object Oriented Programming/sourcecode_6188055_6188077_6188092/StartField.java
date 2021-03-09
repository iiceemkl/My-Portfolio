import java.util.Scanner;

import javax.swing.JFrame;

public class StartField extends Player{
	
	private String player1;
	private String player2;
	private int player1_age;
	private int player2_age;
	private String player1_condition;
	private String player2_condition;
	
	StartField()
	{
		
	}
	
	public StartField(String _name1, String _name2, int _age1, int _age2, String _yesno1, String _yesno2) {
		super(_name1, _name2, _age1, _age2, _yesno1, _yesno2);
	}
	
	public void startNormalCase()
	{
		in = new Scanner(System.in);
		TicTacToeBoard tic = new TicTacToeBoard();
		
		System.out.print("Player 1 Name : ");
		player1 = in.nextLine();
		
		// Loop for checking age input
		while(true) {
			try {
				System.out.print("Enter Age : ");
				String age1 = in.nextLine();
				player1_age = Integer.parseInt(age1);
		    } catch (NumberFormatException | NullPointerException nfe) {
		    	System.out.println("Age must be numbers.");
		    	continue;
		    }
			if(player1_age < 1) {
				System.out.println("Age must be more than 0.");
				continue;
			}
				
			break;
		}
		
		while(true)
		{
			System.out.print("Have you play this game before \"yes\" or \"no\": ");
			player1_condition = in.nextLine();
			if(player1_condition.equals("yes"))
			{
				System.out.println();
				break;
			}
			else if(player1_condition.equals("no"))
			{
				tic.Intro();
				break;
			}
			else
				continue;
		}
		System.out.print("Player 2 Name : ");
		player2 = in.nextLine();
		
		while(true) {
			try {
				System.out.print("Enter Age : ");
				String age2 = in.nextLine();
				player2_age = Integer.parseInt(age2);
		    } catch (NumberFormatException | NullPointerException nfe) {
		    	System.out.println("Age must be numbers.");
		    	continue;
		    }
			if(player2_age < 1) {
				System.out.println("Age must be more than 0.");
				continue;
			}
				
			break;
		}

		while(true)
		{
			System.out.print("Have you play this game before \"yes\" or \"no\": ");
			player2_condition = in.nextLine();
			
			if(player2_condition.equals("yes"))
			{
				System.out.println();
				Check play = new Check();
				play.checkplay();
				new StartField(player1, player2, player1_age, player2_age, player1_condition, player2_condition);
				break;
			}
			else if(player2_condition.equals("no"))
			{
				tic.Intro();
				Check play = new Check();
				play.checkplay();
				new StartField(player1, player2, player1_age, player2_age, player1_condition, player2_condition);
				break;
			}
			else
				continue;
			
		}
	}
	
	public void startAdvanceCase()
	{
		JFrame window = new JFrame("Tic-Tac-Toe");
        window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        window.getContentPane().add(new Advance());
        window.setBounds(300,200,300,300);
        window.setVisible(true);
	}
}
