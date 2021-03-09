import java.util.Arrays;
import java.util.InputMismatchException;
import java.util.Scanner;


public class TicTacToeBoard{

	public static void printBoard(String[] board) {
		System.out.println("/---|---|---\\");
		System.out.println("| " + board[0] + " | " + board[1] + " | " + board[2] + " |");
    	System.out.println("|-----------|");
		System.out.println("| " + board[3] + " | " + board[4] + " | " + board[5] + " |");
		System.out.println("|-----------|");
		System.out.println("| " + board[6] + " | " + board[7] + " | " + board[8] + " |");
		System.out.println("/---|---|---\\");
	}

	public static void populateEmptyBoard(String[] board) {
		for (int a = 0; a < 9; a++) {
			board[a] = String.valueOf(a+1);
		}
	}
	
	public void Intro()
	{
		System.out.println("Tic-tac-toe is a simple, two-player game which, if played optimally by both players, will always result in a tie. The game is also called noughts and crosses or Xs and Os. Tic-tac-toe is a game that is traditionally played by being drawn on paper, and it can be played on a computer or on a variety of media.");
		System.out.println();
	}
}