public class VariableScope {
	public static int j=42;
	
	public static void main(String[] args) {
		//As we begin to define multiple methods
		//we should learn about the scope of 
		//variables.  The 'scope' of the variable
		//if the part of the code that may access 
		//that variable.
		
		//Four variables are declared in this file.
		//j is declared above outside of the methods
		//but inside the class.  This variable is 
		//accessible to anything method within the class.
		
		//i is declared in each method and initialized
		//to different values in each.  The same
		//println is called in all three methods.
		//Look at the output
				
		int i=0;
		System.out.println("The value of i is "+i+", the value of j is "+j);
		method1();
		method2();
	}
	
	public static void method1()
	{
		int i=1;
		System.out.println("The value of i is "+i+", the value of j is "+j);
	}
	
	public static void method2()
	{
		int i=2;
		System.out.println("The value of i is "+i+", the value of j is "+j);
	}
}
