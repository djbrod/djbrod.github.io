public class stringCompare {

    public static void main(String[] args) {

        //String comparison is trickier since strings are stored as objects
        //let's make two string variables containing the same data
        String one = new String("Hello!");
        String two = new String("Hello!");

        //and one that is different
        String three = new String("Goodbye!");

        //If we naively compare the two variables we get an unexpected result
        System.out.println(one == two);
        System.out.println(one == three);

        //The string object has a method to address this curious result
        System.out.println(one.equals(two));
        System.out.println(one.equals(three));

        //compareTo is another useful method of the string class
        //This method returns 0 if the strings are equal,
        //a positive value if the parameter is alphabetically before the object
        //a negative value if the parameter is alphabetically after the object
        String stringA = "A";
        String stringB = "B";
        String stringC = "C";

        System.out.println(stringB.compareTo(stringA));
        System.out.println(stringB.compareTo(stringB));
        System.out.println(stringB.compareTo(stringC));

        //The string object has ~40 methods, we will not cover them all
        //here but there are a few other that are useful in making comparisons

        //Sometimes we want to compare strings without regard to case (Upper vs. lower)
        //We can force a string to have only upper or lower case characters using these methods
        System.out.println(one.toUpperCase());
        System.out.println(one.toLowerCase());

        //Now your turn. Compare the two strings declared below without regard to case.  The result should be 'true'.
        String first = "Kiser";
        String second = "kiser";

        //Print your comparison to the console here:

    }
}
