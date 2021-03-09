package lab;

public class BankAccount {
	private double balance;
	
	public BankAccount(){   
		balance = 0;
	}
	
	public BankAccount(double initialBalance) {
		balance = initialBalance;
	}
	
	public double getBalance() {
		return this.balance;
	}
	
	public void deposit(double amount) {
		balance = balance + amount;
	} 
	
	public void withdraw(double amount) {
		balance = balance - amount;
	}
	
	// transfer money from this account to another account
	public void transfer(double amount, BankAccount another) {
		withdraw(amount);
		another.deposit(amount);
	}
}
