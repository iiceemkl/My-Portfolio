package lab;

import java.util.Scanner;

public class Fruit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	Scanner input = new Scanner(System.in);
	
	System.out.println("Color?");
	String Color = input.nextLine();
	if(Color.equals("green"))
	{	
		//Scanner size = new Scanner(System.in);
		System.out.println("Size?");
		String Size = input.nextLine();
		if(Size.equals("big"))
		{
			System.out.println("This fruit is a \"Watermelon\"");
		}
		else if(Size.equals("medium"))
		{
			System.out.println("This fruit is a \"Apple\"");
		}
	    else if(Size.equals("small"))
		{
			System.out.println("This fruit is a \"Grape\"");
		}	
	}
	else if(Color.equals("yellow"))
	{
		//Scanner shape = new Scanner(System.in);
		System.out.println("Shape?");
		String Shape = input.nextLine();
		if(Shape.equals("round"))
		{
			//Scanner size = new Scanner(System.in);
			System.out.println("Size?");
			String Size = input.nextLine();
			if(Size.equals("big"))
			{
				System.out.println("This fruit is a \"Grapefruit\"");
			}
			else if(Size.equals("small"))
			{
				System.out.println("This fruit is a \"Lemon\"");
			}
			
		}
		else if(Shape.equals("thin"))
		{
			System.out.println("This fruit is a \"Banana\"");
		}
	}
	else if(Color.equals("red"))
	{
		Scanner size = new Scanner(System.in);
		System.out.println("Size?");
		String Size = input.nextLine();
		if(Size.equals("medium"))
		{
			System.out.println("This fruit is a \"Apple\"");
		}
		else if(Size.equals("small"))
		{
			Scanner taste = new Scanner(System.in);
			System.out.println("Taste?");
			String Taste = input.nextLine();
			if(Taste.equals("sweet"))
			{
				System.out.println("This fruit is a \"Cherry\"");
			}
			else if(Taste.equals("sour"))
			{
				System.out.println("This fruit is a \"Grape\"");
			}
		}
	}
	}

}
