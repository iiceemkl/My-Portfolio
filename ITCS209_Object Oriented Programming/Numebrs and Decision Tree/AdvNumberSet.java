package lab;

import java.util.Scanner;

public class AdvNumberSet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner input = new Scanner(System.in);
		int Max = -999999;
		int Min = 9999999;
		int i;
		float count = 0;
		float count2 = 0;
		do {
			System.out.println("Please enter a namber from 0 to 100. To exit enter -1");
			 i = input.nextInt();
			//j=i;
			if(i > 100 || i < -1)
			{
				System.out.println("Invalid number!");
			}
			else if( i == -1)
			{
				break;
			}
			else
			{
				
				count = count + i;
				count2 ++;
					
				if(Max < i)
				{
					Max = i;
				}
				if(Min > i)
				{
					Min = i;
				}
			}
			
		}
		while(i != -1);
		float avg = 0;
		avg = count / count2 ;
		System.out.println("The Maximum number is "+Max);
		System.out.println("The manimum number is "+Min);
		System.out.println("The average value is "+avg);
	}

}

