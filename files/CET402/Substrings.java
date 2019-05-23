public class Substrings {

	public static void main(String[] args) {

		//Let's explore other methods of the String class
		String sentence="Pack my box with five dozen liquor jugs.";
		System.out.println(sentence);
		
		//We can split a string using the substring method
		//a single parameter can be passed to the method indicated the first character to use from the string
		//The index zero (0) indicates the first character
		//Notice the relationship between the parameter value and what is printed below
		System.out.println(sentence.substring(0));
		System.out.println(sentence.substring(1));
		System.out.println(sentence.substring(2));
		
		//We can also pass two parameters to the substring method.
		//Sometimes we say that this method is "overloaded" in that there 
		//are multiple way we can call it depending on the number and type of paramters
		//The first parameter is the index to start the substring
		//The second parameter is the index to end the substring
		
		//Here is the whole sentence again using the substring method
		System.out.println(sentence.substring(0, sentence.length()));
		
		//With this method we can cut the left half of the string off
		System.out.println(sentence.substring(17, sentence.length()));
		
		//With this method we can cut the right half of the string off
		System.out.println(sentence.substring(0, 7));
		
		//With this method we can cut off the ends of the sentence
		System.out.println(sentence.substring(8, 16));
		
		//With this method we can cut out the middle of the sentence
		String newString=sentence.substring(0, 7)+sentence.substring(16, sentence.length());
		System.out.println(newString);
		
		//Your turn. Take the string below and write new code according to the comments 
		String youTurn="Go Blue Devils!";
				
		//print the part of the string above that says "Go" using the substring method
		
		//print the part of the string above that says "Devils!" using the substring method
		
		//print the part of the string above that says "Blue Devils" using the substring method
		
		//Pick your favorite color (other than blue) and rewrite the sentence to change to color of the mascot using the substring method
		
	}

}
