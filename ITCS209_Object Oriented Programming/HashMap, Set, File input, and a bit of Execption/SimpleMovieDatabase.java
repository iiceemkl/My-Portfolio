import java.util.Map;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


public class SimpleMovieDatabase {
	public Map<Integer, Movie> movies = null;
	
	public void importMovies(String movieFilename)
	{	//YOUR CODE GOES HERE
		//Step 1: Initialize movies as a HashMap
			//Step 2: Read file into lines
			//Step 3: For each line, if the line is empty then skip, if not split by ","
			//Step 4: Create a new Movie object for each movie. Use appropriate constructor parameters.
				//Step 5: Put <movie ID, Movie> pair to movies
		movies = new HashMap<Integer, Movie>();
		File file = new File("lab10_movies.txt");
		try
		{
			List<String> lines = FileUtils.readLines(file);
			for(String line : lines)
			{
				String[] comma = line.split(",");
				int mid = 0;
				String title = null;
				String tags = null;
				try
				{
					mid = Integer.parseInt(comma[0]);
					if(!comma[1].equals(" "))
					{
						title = comma[1];
						try
						{
							tags = comma[2].replaceAll("\\|", ", ");
							
							Movie mov = new Movie(mid, title, tags);
							movies.put(mid, mov);
							movies.get(mid).tags.add(tags);
						}
						catch (Exception c)
						{
							continue;
						}
					}
					else
					{
						continue;
					}
				}
				catch(Exception c)
				{
					continue;
				}
			}
		}
		catch(IOException c)
		{
			c.printStackTrace();
		}
	}
	
	
	//-------------------BONUS----------------------
	public List<Movie> searchMovies(String query) 
	{
		//YOUR BONUS CODE GOES HERE
		List<Movie > SM = new ArrayList<Movie>();
		
        for(Movie mv : movies.values())
        {
        	if(mv.title.toLowerCase().indexOf(query.toLowerCase())!=-1)
        			{
        			SM.add(mv);
        }
        else
        	continue;
	}
		return SM;
	}
	
	public List<Movie> getMoviesByTag(String tag)
	{
		//YOUR BONUS CODE GOES HERE
		List<Movie> SM = new ArrayList<Movie>();
		
		for(Movie mv : movies.values())
		{
			if(mv.toString().toLowerCase().indexOf(tag.toLowerCase())!=-1)
					{
						SM.add(mv);
					}
			else
			{
				continue;
			}
		}
		return SM;
	}
	
	public static void testRegular()
	{
		SimpleMovieDatabase mdb = new SimpleMovieDatabase();
		mdb.importMovies("lab10_movies.txt");
		System.out.println("Done importing "+mdb.movies.size()+" movies");
		int[] mids = new int[]{139747, 141432, 139415, 139620, 141305};
		for(int mid: mids)
		{
			System.out.println("Retrieving movie ID "+mid+": "+mdb.movies.get(mid));
		}
	}
	
	public static void testBonus()
	{
		System.out.println("\n////////////////////////// BONUS ///////////////////////////////");
		SimpleMovieDatabase mdb = new SimpleMovieDatabase();
		mdb.importMovies("lab10_movies.txt");
		String[] queries = new String[]{"america", "thai", "thailand"};
		for(String query: queries)
		{
			System.out.println("Results for movies that match: "+query);
			for(Movie m: mdb.searchMovies(query))
			{
				System.out.println("\t"+m);
			}
			System.out.println();
		}
		
		String[] tags = new String[]{"Musical", "Action", "Thriller"};
		for(String tag: tags)
		{
			System.out.println("Results for movies in category: "+tag);
			for(Movie m: mdb.getMoviesByTag(tag))
			{
				System.out.println("\t"+m);
			}
			System.out.println();
		}
	}
	
	public static void main(String[] args)
	{
		
		//testRegular();
		
		testBonus();
		//^Uncomment to test bonus problem
		
	}

}
