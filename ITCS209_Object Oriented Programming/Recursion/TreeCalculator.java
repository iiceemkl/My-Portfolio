public class TreeCalculator {

		
	public static int findMax(Node root)
	{	//****YOUR CODE HERE**
		if(null==root) 
		return -1;
		int id = root.id;
		int left= findMax(root.left);
		int right = findMax(root.right);
		return Math.max(Math.max(left,right ), id);
		//*********************
	}
	public static int findMin(Node root)
	{
		int Min = Minimum(root);
		return Min == Integer.MAX_VALUE?-1 :Min;
	}
	
	public static int Minimum(Node root)
	{	//****YOUR CODE HERE**
		if(null==root) 
			return Integer.MAX_VALUE;
			int id = root.id;
			int left= Minimum(root.left);
			int right = Minimum(root.right);
			return Math.min(id, Math.min(left, right));
		
		//*********************
	}
	
	//************* BONUS ****************//
	public static double sumTree(Node root)
	{	
		//****YOUR CODE HERE**
		if(root==null)
			
		//*********************
		return 0;
		return root.id+sumTree(root.left)+sumTree(root.right);
	}
	
	public static double avgTree(Node root)
	{
		//****YOUR CODE HERE**
		int num = count(root);
		if(num==0)
			return 0;
		return sumTree(root)/(double)num;
		//*********************
	}

	private static int count(Node root) {
		// TODO Auto-generated method stub
		if(root ==null)
			return 0;
		return 1+count(root.left)+count(root.right);
	}
	
}
