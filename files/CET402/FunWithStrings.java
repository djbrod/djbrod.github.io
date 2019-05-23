public class FunWithStrings {

	public static void main(String[] args) {

		//Strings are sequences of characters
		//Java treats Stings as objects,  welcome to using your first object
		//Objects have both data and methods (things you can do to the data) 
		
		//Let's create a few strings, enter your name on the next lines
		String firstName = new String("Dave");
		String lastName = new String("Broderick");
		
		String greeting = "Hello";
				
		//We can print strings
		System.out.print(greeting);
		System.out.print(firstName);
		System.out.println(lastName);
		
		//We can improve the appearance of the greeting by adding (called concatenating) characters where needed
		System.out.print(greeting+" ");
		System.out.print(firstName+" ");
		System.out.println(lastName+"!");
		
		//Some methods can return information about the data in an object
		// length() is a method of String object that returns the number of characters in the String data
		int charCount=0;
		charCount=firstName.length();
		System.out.println("Your first name has "+charCount+" characters.");
		
		//Write code here that prints the total number of characters in your whole name (first and last)
		
		//Declare another string that contains your middle name (if you don't have one, make one up)

		//Print your whole name
		
		//Print the total number of characters in your name 
		
	}

}
