package Lab09;

//Name: 
//ID: 
//Section: 

public class BottleOfMilk extends Item{

	private double originalVolume = 0;		//ml
	private double currentVolume = 0;
	public double P = getPurchasePrice();
	public double C = getCurrentValue();
	
	public BottleOfMilk(double _purchasePrice, double _age, double weight, double _volume) {
		super(_purchasePrice, _age, weight);
		originalVolume = _volume;
		currentVolume =originalVolume;
	}

	@Override
	public double getCurrentValue() {
		//Your Code Goes Here
		double V0 = originalVolume;
		double V = currentVolume;
		double sum = 0;
		sum = sum+(V/V0);
		C = P*sum;
		return C;
	}
	
	@Override
	public String toString()
	{
		return "[Milk"+": Value = "+String.format( "%.2f", this.getCurrentValue())+" Baht, Milk left = "+getVolume()+" ml]";
	}
	
	public void drink(double vol)
	{
		System.out.println("Drinking "+vol+" ml of milk");
		currentVolume -= vol;
		if(currentVolume < 0) currentVolume = 0;
	}
	
	@Override
	public double getWeight()
	{
		return super.getWeight()*(currentVolume/originalVolume);
	}
	
	public double getVolume()
	{
		return currentVolume;
	}
	
	public BottleOfMilk clone()
	{
		//Your Code Goes Here
		BottleOfMilk m2 = new BottleOfMilk(P, super.getAge(), super.getWeight(), currentVolume);
		return m2 ;
	}
}
