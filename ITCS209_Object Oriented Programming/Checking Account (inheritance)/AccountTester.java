package lab;

public class AccountTester {

	public static void main(String[] args) {
		SavingAccount lisa = new SavingAccount(0.5);
		CheckingAccount phil = new CheckingAccount(100);
		
		lisa.deposit(10000);
		lisa.transfer(2000, phil);
		phil.withdraw(1500);
		phil.withdraw(80);
		
		lisa.transfer(1000, phil);
		phil.withdraw(400);
		
		// Simulate end of month
		lisa.addInterest();
		phil.deductFees();
		
		System.out.println("Lisa's saving balance: " + lisa.getBalance());
		System.out.println("Expected: 7035");
		
		System.out.println("Phil's checking balance: " + phil.getBalance());
		System.out.println("Expected: 1116");
		
	}

}