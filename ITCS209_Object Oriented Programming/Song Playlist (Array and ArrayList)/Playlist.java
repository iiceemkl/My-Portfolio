package lab;

//Name:
//Student ID: 
import java.lang.Math; 

public class Playlist {
	public static final int SIZE = 5;
	
	public static void main(String[] args) {
		String[] songs = new String[SIZE];
		double[] durations = new double[SIZE];
		
		songs[0] = "How long";
		songs[1] = "End Game";
		songs[2] = "Perfect";
		songs[3] = "Anywhere";

		durations[0] = 3.30;	// 3 minutes 30 seconds
		durations[1] = 4.11;	// 4 minutes 11 seconds
		durations[2] = 4.21;	// 4 minutes 21 seconds
		durations[3] = 3.35;	// 3 minutes 35 seconds
		
		// Add a new song named "Find you" at index 4
		// Add a new duration 3.38 at index 4
		
		// Your code goes here
		songs[4] = "Find you";
		durations[4] = 3.38;
		
		// Display songs in the playlist
		showPlaylist(songs, durations);

		// Find the longest song
		int idx = findLongestSong(durations);
		System.out.println("The longest song is " + songs[idx]);
		
		// Find the total duration of this playlist in seconds
		int total = getPlaylistDuration(durations);
		System.out.println("The total duration is " + total + " seconds.");
	}
	
	public static int findLongestSong(double[] durations) {
		// Your code goes here
		int i = 0;
		double max = durations[i];
		int value = 0;
		for(i=0 ; i<durations.length ; i++ )
		{
			if(max < durations[i])
			{
				max = durations[i];
				value = i;
			}	
		}
		return value;
	}
	
	public static int getPlaylistDuration(double[] durations) {
		// Your code goes here
		int sum = 0;
		int i = 0;
		for(i = 0 ; i<durations.length ; i++)
		{
			int amountX = (int) durations[i] * 100;
			sum = sum + (int) durations[i] * 60 + (int) ((durations[i] * 100)-(amountX));
		}
		return sum;
	}
	
	public static void showPlaylist(String[] songs, double[] durations) {
		for(int i = 0; i < SIZE; i++) {
			System.out.println("[" + (i + 1) +"] " + songs[i] + " (" + durations[i] + ")");
		}
	}
}