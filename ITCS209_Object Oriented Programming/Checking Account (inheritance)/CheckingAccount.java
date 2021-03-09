package lab;

public class CheckingAccount extends BankAccount{
	
	private int transactionCount;
	
	public  CheckingAccount()
	{
		transactionCount = 0;
	
	}
	
	public CheckingAccount(double initBalance)
	{
		super(initBalance);
		
	}
	
	public void deductFees()
	{
		double sum = 0;
		if(transactionCount > 3)
		{
			 sum = (transactionCount-3)*2.0;
			 super.withdraw(sum);
		}
		
	}
	public void deposit(double amount) {
		super.deposit(amount);
		transactionCount++;
	} 
	
	public void withdraw(double amount) {
		super.withdraw(amount);
		transactionCount++;
		
	}
	


}
