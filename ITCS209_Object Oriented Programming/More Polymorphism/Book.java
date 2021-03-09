package Lab09;

//Name: 
//ID: 
//Section: 

public class Book extends Item{
	
	private StringBuilder note = null;
	public double P = getPurchasePrice();
	public double T = getAge();
	public double C = getCurrentValue();
	
	
	public Book(double _purchasePrice, double _age, double weight) {
		super(_purchasePrice, _age, weight);
		note = new StringBuilder();

	}

	@Override
	public double getCurrentValue() {
		//Your Code Goes Here
		double sum = 1;
		int i;
		for(i = 0 ; i < T ; i++)
		{
			sum = sum*0.9;
		}
		C = P*sum;
		return C;
	}

	@Override
	public String toString()
	{
		return "[Book: value = "+String.format( "%.2f", this.getCurrentValue())+" Baht, Note = \""+getNote()+"\"]";
	}
	
	public void takeNote(String _note)
	{
		System.out.println("Taking note: \""+_note+"\"");
		note.append(_note);
	}
	
	public String getNote()
	{
		
		return note.toString();
	}
	
	public Book clone()
	{
		//Your Code Goes Here
		Book b2 = new Book(1223, 1, 2);
		//Book b2 = new StringBuilder("Book 1");
		return b2;
		
	}
}