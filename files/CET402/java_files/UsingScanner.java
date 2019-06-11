
//Use code from a library with the import statement 
import java.util.Scanner;

public class UsingScanner {
	public static void main(String[] args) {
		// declare a Scanner object that uses the keyboard for input
		Scanner keyboard = new Scanner(System.in);

		// The scanner object can read a whole line at a time
		System.out.println("Enter a line of text:");
		System.out.println(keyboard.nextLine());

		// The scanner object can read individual words at a time (separated by spaces)
		System.out.println("Enter three words on a line:");
		System.out.println(keyboard.next());
		System.out.println(keyboard.next());
		System.out.println(keyboard.next());

		// The scanner object can read individual integers
		// Run the code multiple times and enter different types of values (int,
		// doubles, Strings)
		// Record the output in your write up
		System.out.println("Enter three integers:");
		System.out.println(keyboard.nextInt());
		System.out.println(keyboard.nextInt());
		System.out.println(keyboard.nextInt());

		// The scanner object can read individual real values
		// Run the code multiple times and enter different types of values (int,
		// doubles, Strings)
		// Record the output in your write up
		System.out.println("Enter three real values:");
		System.out.println(keyboard.nextDouble());
		System.out.println(keyboard.nextDouble());
		System.out.println(keyboard.nextDouble());

		// The values read from the scanner object can be stored in variables for latter
		// use
		System.out.println("Enter two values:");
		double a = keyboard.nextDouble();
		int b = keyboard.nextInt();
		System.out.println(a / b);

		// Your Turn, write code to read two integers and add them.
		// Include a prompt for the user and print the result to the console

		// close the keyboard scanner to prevent a resource leak
		keyboard.close();
	}
}
