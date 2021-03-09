package lab08;

public abstract class Shape implements Comparable{
	public static double PI = 3.14;
	public String color;
	public String descirption;
	
	public Shape(String _color,String _description)
	{
		color = _color;
		descirption = _description;
	}

	public void SetColor(String color)
	{
		this.color = color;
	}
	public String getColor()
	{
		return color;
	}
	public String ToString()
	{
		return descirption +"(color="+ color +", area="+ this.getArea() +")";
 	}
	public int compareTo(Object Shape)
	{
		if(this.getArea() > ((Shape) Shape).getArea())
		{
			return 1;
		}
		else if(this.getArea() == ((Shape) Shape).getArea())
		{
			return 0;
		}
		else
		{
			return -1;
		}
	}
	public abstract double getArea();
}
