package lab;

//Name:
//Student ID: 
import java.lang.Math; 
import java.util.ArrayList;


public class Playlist2 {
	public static final int SIZE = 5;
	
	public static void main(String[] args) {
		
		
		ArrayList<String> songs = new ArrayList<String>();
		ArrayList<Double> durations = new ArrayList<Double>();
		
		songs.add("How long");
		songs.add("End Game");
		songs.add("Perfect");
		songs.add("Anywhere");
		songs.add("Find you");
		
		durations.add(3.30);
		durations.add(4.11);
		durations.add(4.21);
		durations.add(3.35);
		durations.add(3.38);
		
		
		// Add a new song named "Find you" at index 4
		// Add a new duration 3.38 at index 4
		
		// Your code goes here
		
		// Display songs in the playlist
		showPlaylist(songs, durations);

		// Find the longest song
		int idx = findLongestSong(durations);
		System.out.println("The longest song is " + songs.get(idx));
		
		// Find the total duration of this playlist in seconds
		int total = getPlaylistDuration(durations);
		System.out.println("The total duration is " + total + " seconds.");
	}
	
	public static int findLongestSong(ArrayList<Double> durations2) {
		// Your code goes here
		int i = 0;
		double max = (double) durations2.get(i);
		int value = 0;
		for(i=0 ; i<durations2.size() ; i++ )
		{
			if(max < (double)durations2.get(i))
			{
				max = (double) durations2.get(i);
				value = i;
			}	
		}
		return value;
	}
	
	public static int getPlaylistDuration(ArrayList<Double> durations2) {
		// Your code goes here
		int sum = 0;
		double a =0 ;
		int i = 0;
		for(i = 0 ; i<durations2.size() ; i++)
		{
			a =durations2.get(i);
			
			sum = (int) (sum + (int)a *60 + (a*100 - (int)a*100));
		}
		return sum;
	}
	
	public static void showPlaylist(ArrayList<String> songs2, ArrayList<Double> durations) {
		for(int i = 0; i < SIZE; i++) {
			System.out.println("[" + (i + 1) +"] " + songs2.get(i) + " (" + durations.get(i) + ")");
		}
	}
}