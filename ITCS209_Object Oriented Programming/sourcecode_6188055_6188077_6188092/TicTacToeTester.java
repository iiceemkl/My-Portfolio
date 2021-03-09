import java.util.InputMismatchException;
import java.util.Scanner;
import java.util.concurrent.ConcurrentHashMap;

public class TicTacToeTester{
	
	
	public static void NormalCase()
	{
		StartField start = new StartField();
		start.startNormalCase();
	}
	public static void AdvanceCase()
	{
		StartField start = new StartField();
		start.startAdvanceCase();
	}
	
	public static void main(String[] args) {
		// Choose normal case or advance case
		while(true) {
			System.out.println("Type '1' or '2' for");
			System.out.println("(1) Normal Game Mode");
			System.out.println("(2) Advance Game Mode");
			
			Scanner in = new Scanner(System.in);
			String str = in.nextLine();
			if(str.equals("1")) {
				NormalCase();
				break;
			}else if(str.equals("2")) {
				AdvanceCase();
				break;
			}
		}
	}
}
