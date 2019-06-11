import java.util.Random;

public class RandomValues {
	public static void main(String[] args) {
		// Notice the import statement above
		// It is needed in order to declare a random
		// number generator as shown here
		Random rand = new Random();
		// We can use methods of the rand object to
		// generate random values of different types

		// Here the nextInt method is called to generate
		// random integers. The range is indicated as a
		// parameter. If the parameter has a value n,
		// The range of integer will be from 0 to n-1
		// Generate 100 random integers between 0 and 9
		System.out.println("100 random integers between 0 and 9:");
		for (int i = 0; i < 100; i++)
			System.out.print(rand.nextInt(10) + " ");

		System.out.println();

		// Here's another example. The parameter of nextInt
		// is 100. Therefore the range of integers is
		// from 0 to 99
		// Generate 100 random integers between 0 and 99
		System.out.println("\n100 random integers between 0 and 99:");
		for (int i = 0; i < 100; i++)
			System.out.print(rand.nextInt(100) + " ");
			
		System.out.println();

		// If the range does not start at 0 an offset can be added
		// Here, there are 11 possible integers between 10 and 20
		// The bottom of the range is 10 so we add 10 to the
		// random value
		// Generate 100 random integers in the range 10 to 20
		System.out.println("\n100 random integers in the range 10 to 20:");
		for (int i = 0; i < 100; i++) {
			int randInt = rand.nextInt(11) + 10;
			System.out.print(randInt + " ");
		}
		System.out.println();

		// This is true if the range spans both
		// negative and positive values. The bottom of
		// the range is -5 so we add -5 to the random value
		// Generate random 100 integers in the range -5 to 5
		System.out.println("\n100 integers in the range -5 to 5:");
		for (int i = 0; i < 100; i++) {
			int randInt = rand.nextInt(11) - 5;
			System.out.print(randInt + " ");
		}
		System.out.println();

		// The nextDouble method generates real-valued
		// doubles between 0 and 1
		// Generate 100 random doubles between 0 and 1
		System.out.println("\n100 random doubles between 0 and 1:");
		for (int i = 0; i < 100; i++)
			System.out.print(rand.nextDouble() + " ");
		System.out.println();

		// We can alter the range of value by multiplying the
		// output of the nextDouble by the width of the range
		// Generate 100 random doubles between 0 and 10
		System.out.println("\n100 random doubles between 0 and 10:");
		for (int i = 0; i < 100; i++) {
			double randDouble = rand.nextDouble() * 10;
			System.out.print(randDouble + " ");
		}
		System.out.println();

		// And we can add an offset to alter the lower bound
		// of the range just as we did with the nextInt method
		// Generate 100 random doubles between -100 and 100
		System.out.println("\n100 random doubles between -100 and 100:");
		for (int i = 0; i < 100; i++) {
			double randDouble = rand.nextDouble() * 200 - 100;
			System.out.print(randDouble + " ");
		}
		System.out.println();

		// Your turn. Write code that prints
		// 100 random integers between 100 and 499 to the console

		// Write code that prints
		// 100 random doubles between -1 and 1 to the console

		// Write code that prints
		// 100 random boolean values to the console

	}
}
