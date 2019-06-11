public class NestedLoops {
	public static void main(String[] args) {
		// Just as with iff statements
		// For and while loops can be 'nested',
		// that is, one loop executed within another

		// For instance this set of nested for
		// loops will execute 9 times
		for (int i = 0; i < 3; i++)
			for (int j = 1; j < 4; j++)
				System.out.print((i * 3 + j) + " ");

		System.out.print("\n\n");
		// Each loop execute 3 times
		// The inner loop (with j) executes and completes
		// for each iteration of the outer loop

		// Let's look at another example
		// We'll print all of the coordinates
		// for the gameboard of the children's
		// game Battleship. We'll use the
		// ascii values of the letters
		// A through J in the inner loop
		// indicating the column values
		// The outer loop will iterate from 1 to 10
		// indicating the row values
		for (int row = 1; row < 11; row++) {
			for (char col = 65; col < 75; col++) {
				System.out.print(col);
				System.out.print(row + "\t");
			}
			System.out.print("\n");
		}

		// Your turn. Write code below this comment
		// with nested for loops to to display
		// the pattern shown in the assignment handout

	}
}
