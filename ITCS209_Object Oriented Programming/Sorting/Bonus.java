import java.util.Scanner;

public class Bonus {

    public static void main(String [] args){
    	Bonus pn = new Bonus();
    	Scanner myObj = new Scanner(System.in);
    	String accept = myObj.nextLine();
        if(pn.isPalindrome(accept)){
            System.out.println("Palindrome");
        } else {
            System.out.println("Not Palindrome");
        }   
    }

    public boolean isPalindrome(String original){
        int i = original.length()-1;
        int j=0;
        while(i > j) {
            if(original.charAt(i) != original.charAt(j)) {
                return false;
            }
            i--;
            j++;
        }
        return true;
    }
}