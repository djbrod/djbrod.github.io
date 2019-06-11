public class firstForLoops {
	public static void main(String[] args) {
		// Computers are useful for many reason
		// but mostly they are good at performing
		// repetitive tasks. Loops are useful
		// for this in many programming languages

		// We will practice with for loops first/
		// For loops are useful when a fixed number
		// of iterations through a block of code
		// need to be run. The declaration of a for
		// loop is more concise than that of a while
		// loop making it more readable

		// Here's our first loop, there are three parts:

		// 1) Each for loop uses a variable to control the
		// number of iterations. This variable can be declared
		// as part of the for loop or declared before the
		// for loop. Here, we'll include the
		// declaration in the for loop

		// 2) The next part of a for loop statement is
		// the test condition. This statement must
		// return a boolean value. It is tested
		// before the block of code is run. When it
		// is false, the block will no longer be
		// run and execution of code will continue
		// after the for loop

		// 3) The increment/decrement statement
		// changes the value of the control variable
		// after execution of the block of code.
		// This statement should cause the test
		// condition to be false after a number
		// of iterations. Otherwise, the loop
		// will run forever.

		// This loop will begin at x=1
		// It will run 5 times
		// Each loop will increment x by 1
		for (int x = 1; x < 6; x++)
			System.out.print(x + " ");

		System.out.println(""); // This line is outside the for block

		// Let's declare the variable outside of
		// the loop statement.
		// Also, let's count down this time
		// stop and examine the differences that make this happen
		int i;
		for (i = 5; i > 0; i--)
			System.out.print(i + " ");

		System.out.println("");

		// Now let's try a different increment statement
		// and a slight variation to the test condition
		// This loop will count to 100 by 5's
		for (i = 5; i <= 100; i += 5)
			System.out.print(i + " ");

		System.out.println("");

		// Your turn. Write a for loop that prints
		// the even numbers. Between 17 and 42.

	}
}
