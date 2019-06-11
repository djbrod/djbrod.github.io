public class FirstConditonals {
	public static void main(String[] args) {
		// Recall the boolean data type
		// a boolean variable can hold a value of either 'true' or 'false'
		boolean condition = true;

		// if statements execute a block of code if the condition is true
		// a block of code can be a single line as shown here
		if (condition)
			System.out.println("A single line in an if statement");

		// a block of code can be enclosed by brackets {}
		if (condition) {
			System.out.print("Multiple lines in ");
			System.out.println("an if statement");
		}

		// let's change the value of the condition and
		// try that last example again without the brackets
		// pay attention to which line is executed and which is not
		condition = false;
		if (condition)
			System.out.print("Multiple lines in ");
		System.out.println("an if statement");

		// A decision can be made between multiple blocks of code with an if-else
		// statement
		// Comparison operators can be used in place of the boolean variable
		int a = 15;
		if (a < 0)
			System.out.println("The value stored in a is negtive");
		else
			System.out.println("The value stored in a is positive");
		// can you think of a value for a that would make this code incorrect?

		// Additional conditions can be considered with an if-elseif statement
		if (a < 0)
			System.out.println("The value stored in a is negtive");
		else if (a > 0)
			System.out.println("The value stored in a is positive");
		else
			System.out.println("The value stored in a is zero");
		// Change the value of a in the declaration line above to
		// execute the different blocks of code

		// multiple coniditions can be tested in a few ways
		// first, let's use a boolean operator
		// the first condition AND the second need to be true
		// in order to execute the first block of code
		if ((a > 0) && (a < 10))
			System.out.println("The value in a is a single digit");
		else
			System.out.println("The value in a has multiple digits");

		// We can accomplish the same thing by placing
		// one if statement in another
		// These are called "nested" if statements
		if (a > 0)
			if (a < 10)
				System.out.println("The value in a is a single digit");
			else
				System.out.println("The value in a has multiple digits and is positive");
		else
			System.out.println("The value in a is non-positive");
		// notice that there are now multiple else
		// statements and when each will get called
		// Also noticed how careful indentation help you read the code

		// Your turn. Write an if statement that determines
		// whether a variable is odd or even
		// Hint: think about the remainder of the value when divided by two
		// Write sufficient test cases for your code

	}
}
