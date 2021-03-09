package lab;

/*
 * The Triangle class, subclass of Shape
 */

/*  The structure of Triangle class is similar to Rectangle */
public class Triangle extends Shape{
	private double base;
	private double height;
	
	public Triangle()
	{
		base = 0.0;
		height = 0.0;
	}
	   public Triangle(String color, double base, double height) {
		      //add your code here
			   super(color);
			   this.base = base;
			   this.height = height;
		   }
	public String toString()
	{
		return "Triangle[base=4.0,height=5.0,Shape[color="+ getColor()+"]]";
	}
	public double getArea()
	{
		return 0.5*base*height;
	}
	public double getArea(double base, double height)
	{
		this.base = base;
		this.height = height;
		return  getArea();
	}
}
