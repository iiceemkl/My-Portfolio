import java.util.Scanner;

public  class  Player {

	//Variable
	public String name1;
	public String name2;
	public int age1;
	public int age2;
	public String yesno1;
	public String yesno2;
	static Scanner in;
	static String[] board;
	static String turn;
	
	Player()
	{
		age1 = 0;
		age2 = 0;
		yesno1 = null;
		yesno2 = null;
		board = new String[9];
		turn = "X";
	}
	
	public Player(String _name1,String _name2,int _age1,int _age2,String _yesno1,String _yesno2)
	{
		this.name1 = _name1;
		this.name2 = _name2;
		this.age1 = _age1;
		this.age2 = _age2;
		this.yesno1 = _yesno1;
		this.yesno2 = _yesno2;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public int getAge1() {
		return age1;
	}

	public void setAge1(int age1) {
		this.age1 = age1;
	}

	public int getAge2() {
		return age2;
	}

	public void setAge2(int age2) {
		this.age2 = age2;
	}

	public String getYesno1() {
		return yesno1;
	}

	public void setYesno1(String yesno1) {
		this.yesno1 = yesno1;
	}

	public String getYesno2() {
		return yesno2;
	}

	public void setYesno2(String yesno2) {
		this.yesno2 = yesno2;
	}
	
	
	
}
