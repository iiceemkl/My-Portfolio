package lab;

import java.util.ArrayList;

public class ShapeTester {
	public static void main(String[] args) {
		ArrayList<Shape> shapes = new ArrayList<Shape>();
		shapes.add(new Rectangle("red", 4, 5));
		shapes.add(new Triangle("blue", 4, 5));
		shapes.add(new Shape("blue"));
		shapes.add(new Rectangle());
		shapes.add(new Triangle());
		
		// set color of shape at index 3 and 4
		shapes.get(3).setColor("green");
		shapes.get(4).setColor("yellow");
		
		// call toString() and getArea() method
		for(int i = 0; i < shapes.size(); i++) {
			System.out.println("(" + i +") " + shapes.get(i));
			System.out.println("Area is " + shapes.get(i).getArea());
		}
		
		// test overload method of class Rectangle
		// How to prevent a run-time error when try to call getArea(x,y) of Rectangle? 
		// Hint. Using instanceof function
		System.out.println("Test overload method of class Rectangle");
		for(int i = 0; i < shapes.size(); i++) {
			//add your code here
			if (shapes.get(i) instanceof Rectangle)
			{
				System.out.println("Rectangle Area is " + ((Rectangle)shapes.get(i)).getArea(5, 10));
			}
		}	
	}
}