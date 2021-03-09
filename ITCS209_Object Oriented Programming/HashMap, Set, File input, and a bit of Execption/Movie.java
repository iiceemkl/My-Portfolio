import java.util.HashSet;
import java.util.Set;

public class Movie {
	public int mid = -1;
	public String title = null;
	public String tag = null;
	public Set<String> tags;
	
	public Movie(int _mid, String _title , String _tags)
	{
		this.mid = _mid;
		this.title = _title;
		this.tag = _tags;
		tags = new HashSet<String>();
	}
	
	
	public String toString()
	{
		return "[mid: "+mid+":"+title+" "+tag+"]";
	}
	
}
