import java.util.Scanner;
public class FirstWhileLoops {
	public static void main(String[] args) {
		//While loops run a block of code
		//multiple times just as a for loop does.
		//While loops are more appropriate
		//when the number of iterations are unknown
		//prior to execution.  The user may interact 
		//with the program to alter the number of iterations,
		//or, a file of unknown length may be used as input.
		
		//A while loop simply has a condition statement.
		//Again, this statement must evaluate to a boolean value
		//Let's recreate some of the for loop examples
		//from firstForLoops.java
		
		int x=1;
		while(x<=5)
		{
			System.out.print(x+" ");
			x++;  //If you omit this line, you will create an infinite loop
		}
		System.out.println("");
		//The previous example has all of the basic parts of a while 
		//loop but does not demonstrate it's use for an unknown
		//number of iterations.  Let's get some user input to 
		//demonstrate.  We'll reuse the integer variable x
		Scanner keyboard=new Scanner(System.in);
		System.out.println("This loop echoes positive integers.  Enter a non-positive integer to stop.");
		System.out.print("Enter an integer:");
		x=keyboard.nextInt();
		while(x>0)
		{
			System.out.println("You entered: "+x);
			System.out.print("Enter another:");
			x=keyboard.nextInt();
		}
		System.out.println("The program has finished executing the loop! We're free!");
		
		//The need to get input before starting the loop above makes
		//the code above less than ideal.  The prompt and nextInt
		//statements are repeated in two locations.  It is good
		//practice to limit the number of time you need to enter
		//identical code.  If it ever needs to change, you only
		//want to change it in one place.
		
		//We can avoid this duplication by using a Do-While loop.
		//The difference between a while and do-while loop is 
		//when the condition statement is evaluated.  A while loop
		//checks the condition before executing the block of code.
		//A Do-While loop checks the condition after the execution
		//of the block.  Here's code that is effectively the same 
		//though much more compact
		System.out.println("This loop echoes positive integers.  Enter a non-positive integer to stop.");
		do
		{
			System.out.print("Enter an integer:");
			x=keyboard.nextInt();
		}while(x>0);
		System.out.println("The program has finished executing the loop! We're free!");
		
		//Your Turn.  Write a while loop that prints the integers 
		//that are divisible by 3 between 0 and 30
				
	}
}
