import java.util.InputMismatchException;
import java.util.Scanner;

public class ExceptionHandling {
	public static void main(String[] args) {
		//When Java cannot run an operation on 
		//the given data, an exception is thrown.
		//Exception is Java's name for a runtime error
		
		//The code shown here will compile as the
		//individual lines are written correctly.
		//However, when run an exception will be thrown.
		//Try it and report the results according to the handout
		int a=6;
		int b=0;
		//System.out.println(a/b);
		
		//Comment the line above so the rest of the code will run
		//To handle this runtime error (exception) we
		//use a "try-catch" statement
		try
		{
			System.out.println(a/b);
		}
		catch(Exception e)
		{
			System.out.println("Exception");
		}
		
		//A try block that may cause multiple 
		//types of exceptions can have multiple catch blocks.
		//This allows each type of error to be handled differently
		Scanner keyboard=new Scanner(System.in);
		try
		{
			System.out.println("Enter two integers:");
			a=keyboard.nextInt();
			b=keyboard.nextInt();
			System.out.println(a+" divided by "+b+" is "+a/b);
		}
		catch(InputMismatchException e)
		{
		  //each Exception object has useful information that can be printed
		  System.out.println(e);
		  System.out.println("Don't you know what an integer is?");
		}
		catch(ArithmeticException e)
		{
		  System.out.println(e);
		  System.out.println("Don't divide by zero!");
		}
		
		//A finally block can be added
		// This block is run after the other blocks always
		//regardless of whether an exception is thrown
		// or not
		try
		{
			System.out.println("Enter two integers:");
			a=keyboard.nextInt();
			b=keyboard.nextInt();
			System.out.println(a+" divided by "+b+" is "+a/b);
		}
		catch(Exception e)
		{
		  System.out.println("Whoops! You did something wrong.");
		}
		finally
		{
		  System.out.println("Either way, you get an A for effort.");
		  keyboard.nextLine();
		}
		
		//If you are writing code that will be used by others
		//(A likely possibility) you may wish to throw your
		//own exceptions so other's code may handle them in their own way
		System.out.println("Enter a line of text that isn't 'BURP'");
		String entry="";
		entry=keyboard.nextLine();
		if(entry.equals("BURP"))
			throw new InputMismatchException("I told you not to type 'BURP'");
		else
			System.out.println("You typed '"+entry+"'");
		
	}
}
