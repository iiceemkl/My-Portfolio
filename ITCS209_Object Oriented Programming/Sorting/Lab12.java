import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.LineIterator;

public class Lab12 {
	
	public static void insertionSort(String[] strings)
	{
		
		for(int i = 0; i < strings.length; i++)
		{
			boolean swap = false;
			for(int j = 0; j < strings.length-1-i; j++)
			{
				if(strings[j].compareTo(strings[j+1]) < 0)
				{
					String temp = strings[j];
					strings[j] = strings[j+1];
					strings[j+1] = temp;
					
					swap = true;
				}
			}
			if(!swap)break;
			System.out.print("Pass "+(i+1)+": ");
			accept(strings);
		}
	}
	
	static String[] read(String fileName){
    	String[] Sorted = null;
		try {
		File file = new File(fileName);
			LineIterator it = FileUtils.lineIterator(file, "UTF-8");
			StringBuilder Strb = new StringBuilder();
				while (it.hasNext()) {
					Strb.append(it.nextLine());
				}
				Sorted = Strb.toString().split(" ");
				
		} catch(FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return Sorted;
	}
	
	static void accept(String[] read)
	{
		System.out.print("[");
		for(int i = 0 ;i < read.length ; i++)
		{
			System.out.print(read[i]);
			if (i!=read.length-1) {
				System.out.print(",");
			}
		}
		System.out.println("]");
	}
		
	public static void main(String[] args) {
		
		
		System.out.print("Original: ");
		accept(read("unsorted.txt"));
		insertionSort(read("unsorted.txt"));
	}
}
		
		
	
