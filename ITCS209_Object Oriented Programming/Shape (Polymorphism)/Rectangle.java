package lab;

/*
 * The Rectangle class, subclass of Shape
 */
public class Rectangle extends Shape{
   // Private member variables
   //add your code here
	private double length;
	private double width;
	private double area;
	

   // Constructors
   public Rectangle()
   {
	  //add your code here
	  length = 0.0;
	  width = 0.0;
	  area = 0.0;
   }
   public Rectangle(String color, double length, double width) {
      //add your code here
	   super(color);
	   this.length = length;
	   this.width = width;
   }

   @Override
public String toString() {
	return "Rectangle [length=" + length + ", width=" + width + "],Shape[color= "+ getColor()+"]]";
}

   // Override the inherited getArea() to provide the proper implementation
   @Override
   public double getArea() {
      //add your code here
	   return length *width;
   }

   public double getArea(double length, double width) {
	   	 //add your code here
	   this.length = length;
	   this.width = width;
	   	return getArea();
	   }
   
   
}
