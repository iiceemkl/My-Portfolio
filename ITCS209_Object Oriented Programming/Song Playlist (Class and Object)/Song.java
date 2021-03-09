package lab;

public class Song 
	{
		private String title;
		private double duration;	
		
		public String getTitle()
		{
			return this.title;
		}
		public double getDuration()
		{
			return this.duration;
		}
		public void setTitle(String Title)
		{
			this.title = Title;
		}
		public void setDuration(double Duration)
		{
			this.duration = Duration;
		}
		public void showSong()
		{
			System.out.println(getTitle() + " (" + getDuration()+")");
		}
		
		
		public Song(String t,double d)
		{
			this.title = t;
			this.duration  = d;
		}
	
		public static void main(String[] args) {
			
			Song myFavSong = new Song("Perfect", 4.21);
			System.out.println("My favorite song is " + myFavSong.getTitle());
			System.out.println("The duration of my favorite song is " + myFavSong.getDuration());
			System.out.println("------------------------------------------------------------");
			
			// call method setTitle and setDuration to update the value of myFavSong, then call showSong()
			// YOUR CODE GOES HERE
			myFavSong.setTitle("Anywhere");
			myFavSong.setDuration(3.35);

			System.out.print("My new favorite song is ");
			myFavSong.showSong();
			System.out.println("------------------------------------------------------------");
			
			// Ask your friend for his/her favorite song
			// Create a song object named myFriendSong and display that song
			// YOUR CODE GOES HERE
			Song myFriendSong = new Song("Find you", 3.38);
			System.out.print("My friend's favorite song is ");
			myFriendSong.showSong();
			
			
			
		}
	}


