package lab;

import java.util.Scanner;

public class NumberSet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		System.out.println("Please enter your namber:");
		int i = input.nextInt();
		System.out.println("Please enter your namber:");
		int j = input.nextInt();
		System.out.println("Please enter your namber:");
		int k = input.nextInt();
		
		int Max = Math.max(Math.max(i,j),k);
		int Min = Math.min(Math.min(i,j),k);
		float avg = (i + j + k) / (float) 3;
		
		System.out.println("The Maximum number is "+Max);
		System.out.println("The manimum number is "+Min);
		System.out.println("The average value is "+avg;
	}

}
