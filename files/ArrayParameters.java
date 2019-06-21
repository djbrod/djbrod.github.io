public class ArrayParameters {
	public static void main(String[] args) {
		//Arrays can be passed to methods as parameters
		//Here is an array to play with
		double arr[]= {2.7,3.14,42.0,1000};
		
		//The printArray method prints the values on a line in the console
		//the printArray method does not alter the values of the array
		printArray(arr);
		
		//Let's try another method that does alter the values within the method
		doubleArray(arr);
		System.out.println("\nPrinted from the main method");
		printArray(arr);
		//Look at the output.  Think about the scope of the array variable
		//Changes made to the array in the doubleArray method are made
		//too to the a variable.  These changes are also seen in the arr
		//variable in the main method (a separate variable name and scope)
		//We say the the array has been passed "by reference"
		//The memory location of the array is what is passed into the method
		//Any changes to variables in that memory location are apparent in 
		//both scopes.	Be aware of this when passing arrays into methods.
		
		//This can also be useful.  Finish the method that I started below
		//that swaps two elements of an array.  Print the altered array from
		//the main method.  Include multiple test cases.
		
		
	}
	
	 public static void printArray( double[] a )
	 {
	      for (int i = 0 ; i < a.length ; i++ )
	    	  System.out.print(a[i]+" ");
	      System.out.println("");
	 }
	 
	 public static void doubleArray( double[] a )
	 {
		 for (int i = 0 ; i < a.length ; i++ )
	    	  a[i]=a[i]*2;
		 System.out.println("Printed from within doubleArray method");
		 printArray(a);
	 }
	 
	 public static void swap( double[] a ,int i,int j)
	 {
	      //Write your code here
	 }
	 
}
