public class FixScope {
	public static void main(String[] args) {
		System.out.println("Let's count to 10:");
		for (int i = 1; i < 10; i++)
			System.out.println("i is " + i);
		System.out.println("i is " + i + "\n");
		addPreamble();
	}

	public static void addPreamble() {
		System.out.println("The value of i is " + i);
	}
}
