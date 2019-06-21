public class MultDimArray {
	public static void main(String[] args) {
		//Arrays can have more than one dimension
		//Multi-dimension arrays have more than one index.
		//Multi-dimension arrays still have a data type
		//let's declare and instantiate a two dimensional array
		int[][] twoDimA = new int[3][4];
		
		//We can initialize the array using nested for loops
		for(int i=0;i<3;i++)
			for(int j=0;j<4;j++)
				twoDimA[i][j]=i*j;
		//Or we can initialize a multi-dimension array using literals
		char[][] twoDimB={ { 'X', 'O','X' }, { 'O', 'O','X' },{ 'O', 'O','O' }};
		
		//Use nested for loops again to print out the contents of the arrays
		for (int i = 0; i < 3; i++) 
		{
			for (int j = 0; j < 4; j++)  
                System.out.print(twoDimA[i][j] + " "); 
			System.out.println("");
		}
		
		//Print the character array
		for (int i = 0; i < 3; i++) 
		{
			for (int j = 0; j < 3; j++)  
                System.out.print(twoDimB[i][j] + " "); 
			System.out.println("");
		}
		
		//Each example above requires prior knowledge of the array size
		//This is typical of many programming languages but Java offers
		//an alternative; the length attribute
		//The number of rows can be accessed using
		System.out.println(twoDimA.length);
		
		//And the number of columns can be accessed by
		System.out.println(twoDimA[0].length);
		
		//Let's try printing again
		for (int i = 0; i < twoDimA.length; i++) 
		{
			for (int j = 0; j < twoDimA[0].length; j++)  
                System.out.print(twoDimA[i][j] + " "); 
			System.out.println("");
		}
		
		//Your turn.  Declare and array of doubles that has 4 rows and 5 columns.
		//Use nested for loops to initialize the array using random values
		//Print the array to the console using nested for loops
		
	}
}
