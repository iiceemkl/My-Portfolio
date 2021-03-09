package lab;

import java.util.ArrayList;

public class Playlist3 {

public static final int SIZE = 5;
	
	public static void main(String[] args) {
		String[] songs = new String[SIZE];
		double[] durations = new double[SIZE];
		
		//ArrayList<String> songs2 = new ArrayList<String>();
		//ArrayList<Double> durations2 = new ArrayList<Double>();
		
		ArrayList<Song> playlist = new ArrayList<Song>();
		
		playlist.add(new Song("How long", 3.30));
		playlist.add(new Song("End Game", 4.11));
		playlist.add(new Song("Perfect", 4.21));
		playlist.add(new Song("Anywhere", 3.35));
		playlist.add(new Song("Find you", 3.38));
		
		
		
		songs[0] = "How long";
		songs[1] = "End Game";
		songs[2] = "Perfect";
		songs[3] = "Anywhere";

		durations[0] = 3.30;	// 3 minutes 30 seconds
		durations[1] = 4.11;	// 4 minutes 11 seconds
		durations[2] = 4.21;	// 4 minutes 21 seconds
		durations[3] = 3.35;	// 3 minutes 35 seconds
		
		
		
		// Add a new song named "Find you" at index 4
		// Add a new duration 3.38 at index 40
		
		// Your code goes here
		songs[4] = "Find you";
		durations[4] = 3.38;
		
		/*for(int i=0 ; i<durations.length ; i++)
		{
			songs2.add(songs[i]);
			durations2.add(durations[i]);
		}*/
		
		// Display songs in the playlist
		showPlaylist(playlist);

		// Find the longest song
		int idx = findLongestSong(playlist);
		System.out.println("The longest song is " + playlist.get(idx).getDuration());
		
		//Find the total duration of this playlist in seconds
		int total = getPlaylistDuration(playlist);
		System.out.println("The total duration is " + total + " seconds.");
	}
	

	public static int findLongestSong(ArrayList<Song> playlist) {
		// Your code goes here
		
		double max= (double) playlist.get(0).getDuration();
		int value=0;
		for(int i=1 ; i<playlist.size() ; i++)
		{
			if(max< (double)playlist.get(i).getDuration())
			{
				max= (double)playlist.get(i).getDuration();
				value = i;
			}
		}
		return value;
	}
	
	public static int getPlaylistDuration(ArrayList<Song> durations2) {
		
		// Your code goes here
		int total = 0;
		for(int i=0 ; i<durations2.size() ; i++)
		{
			double value = (double) durations2.get(i).getDuration();
			total = total +  (((int)value/1)*60) + (int)(((value/1)*100) - (((int)value/1)*100));
		}
		return total;
	}
	
	public static void showPlaylist(ArrayList<Song> playlist) {
		
		for(int i = 0; i < SIZE; i++) {
			System.out.println("[" + (i + 1) +"] " + playlist.get(i).getTitle() + " (" + playlist.get(i).getDuration() + ")");
		}
	}
}