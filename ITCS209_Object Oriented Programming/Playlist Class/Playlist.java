package solution;

import java.util.ArrayList;

public class Playlist {
	
	ArrayList<Song> playlist;
	public Playlist (String name)
	{
		playlist = new ArrayList<Song>();
	}

	public int calTotalDuration()
	{
		int sum = 0;
		int i;
		for(i = 0 ; i < playlist.size() ; i++)
		{
			sum = sum + playlist.get(i).getDurationSec();
		}
		return sum;
	}
	
	public void addSong(Song song)
	{
		playlist.add(song);
	}
	public void addSongAtIndex(Song song, int index)
	{
		
		
		if(playlist.size()<index)
		{
			System.out.println("Invalid Index");
		}
		else
		{
			playlist.add(index, song);
		}
			
		
		
	}
	public boolean removeSongByIndex(int index)
	{
		
		if(index>=0 && index<=playlist.size())
		{
			playlist.remove(index);
			return true;
		}
		else
		{
			System.out.println("Invalid Index");
			return false;
		}
	}
	public boolean removeSongByTitle(String title)
	{
		int idx = -1;
		for(int i = 0;i < playlist.size();i++)
		{
			if(playlist.get(i).getTitle() == title)
			{
				idx = i;
			}
		}
		if(idx==-1)
		{
			System.out.println("Not found");
			return false;
		}
		else
		{
			playlist.remove(idx);
			return true;
		}
		
	}
	public void moveUp(int position)
	{
		playlist.add(position-1, playlist.get(position));
		playlist.remove(position+1);
		
	}
	public void moveDown(int position)
	{
		playlist.add(position+2, playlist.get(position));
		playlist.remove(position);
	}
	public void showPlaylist()
	{
		for(int i = 0 ;i < playlist.size() ; i++)
		{
			System.out.println("["+i+"] "+playlist.get(i).getTitle()+"("+playlist.get(i).getDuration()+")");
		}
	}
	
}
