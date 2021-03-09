import java.util.InputMismatchException;
import java.util.Scanner;

public class Check extends Player{
	
	Check()
	{
		
	}

	public void checkplay()
	{
		String winner = null;
		TicTacToeBoard tic = new TicTacToeBoard();
		
			tic.populateEmptyBoard(board);

		System.out.println("Welcome to 2 Player Tic Tac Toe.");
		
		System.out.println("--------------------------------");
		tic.printBoard(board);
		System.out.println("X"+"'s will play first. Enter a slot number to place X in:");

		while (winner == null) {
			int numInput;
			try {
				// Parse String to integer
				String tempInput = in.nextLine();
				numInput = Integer.parseInt(tempInput);
				if (!(numInput > 0 && numInput <= 9)) {
					System.out.println("Invalid input; re-enter slot number:");
					continue;
				}
			} catch (NumberFormatException e) {
				System.out.println("Invalid input; re-enter slot number:");
				continue;
			}
			if (board[numInput-1].equals(String.valueOf(numInput))) {
				board[numInput-1] = turn;
				if (turn.equals("X")) {
					turn = "O";
				} else {
					turn = "X";
				}
				tic.printBoard(board);
				CheckWinner check = new CheckWinner();
				winner = check.checkWinner(board,turn,this.getName2());
				
			} else {
				System.out.println("Slot already taken; re-enter slot number:");
				continue;
			}
		}
		if (winner.equalsIgnoreCase("draw")) {
			System.out.println("It's a draw! Thanks for playing.");
		} else {
			System.out.println("Congratulations! " + winner + "'s have won! Thanks for playing.");
		}
	}
		
		
}

	

	 
