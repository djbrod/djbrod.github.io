public class TypeCasting01 {
    public static void main(String[] args) {

        // In this program, the goal is to show you how automatic and explicit type casting
        // work on primitive data types. Automatic or 'widening' type casting works by taking a
        // smaller data type and putting it into a larger data type.

        // Here we have an integer and below we have a placeholder for a long.
        // We want to cast 'smallNum' to a long
        int smallNum = 100;

        // set bigNum equal to smallNum and the print bigNum
        long bigNum = ;
        System.out.print("Long value for bigNum");
        System.out.println( );


        // Explicit or 'narrowing' casting is needed when we want to assign a value of a larger data type to a smaller
        // data type. Here, we want to store a double in a float. Take note of the syntax needed to explicitly cast a double to
        // a float, it will show itself in many places besides just primitive type casting.

        double bigPie = 3.14159265358979323846264338327950;

        // In the parenthesis, put the variable 'bigPie' in and then print it out below to see
        // the results of the cast.
        float smallPie = ((float) (  ));
        System.out.println(  );

        // TODO: 5/22/2019 What happens if you remove the '(float)' from the expression

        // Try to cast this character into an Integer
        // just like above, use the casting syntax, but instead of 'float' use 'int'
        char c = '0';
        int c_to_Int = (( ) (  ));
    }
}