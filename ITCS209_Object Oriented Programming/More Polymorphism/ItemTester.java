package Lab09;

//Name: 
//ID: 
//Section: 

import java.util.ArrayList;

public class ItemTester {
	
	public static void testRegular()
	{
		//Item[] items = new Item[4];
		Book b1 = new Book(500, 3, 4);
		b1.takeNote("Book 1");
		System.out.println(b1);
		
		Book b2 = new Book(1223, 1, 2);
		b2.takeNote("Book 2");
		System.out.println(b2);
				
		BottleOfMilk m1 = new BottleOfMilk(300, 0.1, 3, 300);
		m1.drink(50);
		System.out.println(m1);
		
		BottleOfMilk m2 = new BottleOfMilk(235, 0.5, 5, 1000);
		m2.drink(69);
		System.out.println(m2);
	}
	
	public static void testBonus()
	{
		//Item[] items = new Item[4];
		Book b1 = new Book(500, 3, 4);
		b1.takeNote("Book 1");
		Book b2 = b1.clone();
		b2.takeNote("Book 2");
		System.out.println("Note on B1: "+b1.getNote());
		System.out.println("Note on B2: "+b1.getNote()+b2.getNote());
				
		BottleOfMilk m1 = new BottleOfMilk(300, 0.1, 3, 300);
		m1.drink(50);
		BottleOfMilk m2 = m1.clone();
		m2.drink(50);
		System.out.println("Milk left in m1: "+m1.getVolume()+" ml");
		System.out.println("Milk left in m2: "+m2.getVolume()+" ml");
		
	}
	
	public static void main(String[] args)
	{
		//testRegular();
		testBonus();
	}
}
