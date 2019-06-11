public class Overloading {
	public static void main(String[] args) {
		// Two methods may have the same name
		// if they have different parameter lists
		// The order and type of the parameters
		// determines which method gets executed

		// The next two lines call separate methods
		// but have the same name. The first
		// has an integer as a parameter.
		// The second has a string as a parameter.
		addPreamble(5);
		addPreamble("Derpty Derp");

		// Your turn. Add a method called preamble that
		// accepts a double variable and prints
		// an appropriate message
		// Uncomment the following line to
		// call your method
		// addPreamble(42.0);

	}

	public static void addPreamble(int i) {
		System.out.println("The integer passed into this method is " + i);
	}

	public static void addPreamble(String s) {
		System.out.println("The String passed into this method is '" + s + "'");
	}
}
