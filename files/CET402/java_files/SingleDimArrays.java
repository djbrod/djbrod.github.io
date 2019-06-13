public class SingleDimArrays {
    public static void main(String[] args) {

        // Arrays
        /*
         * In Java an array is an object that holds many elements of a similar data
         * type. The only disadvantage is that we can only store a fixed number of
         * elements in an array because the compiler as well as the runtime needs to
         * know the size of the array.
         * 
         * Arrays in java are index-based. Meaning that to access the data within them,
         * we need to use a special syntax. A good note is that Java arrays start at
         * index 0.
         */

        // The special syntax for creating arrays is as follows:
        /*
         * 1. type variable_name[]; OR 2. type[] variable_name; (this one is the Java
         * way of doing it) The first way of doing it is the syntax C++ and C use to
         * define arrays.
         * 
         * 
         * When declaring an array, you need to provide two pieces to Java: the type and
         * the variable name. The type lets Java know the types of object the array will
         * hold. We can create arrays primitive data types like int, char, float,
         * double. Lets see some in code!
         */

        int intArray[];
        float floatArray[];

        // Your turn! Below, declare two arrays. One array of booleans, and the other of
        // doubles.

        boolean
        double


        /*
         * Now unfortunately, we've only declared some arrays here, but if we try to put
         * data in them or access them, we won't be able to do anything! With
         * declaration, we only let Java know that we'd like to store some data here and
         * tell it the type of data we'd like to store.
         * 
         * To actually use the array, we need to allocate the desired memory for the
         * array. To do this, we tack on: = new type[array_size];
         * 
         * Here we specify that we'd like to new up the array in the Java Heap, and tell
         * it that we want to store 'array_size' number of elements in the array. We're
         * here instantiating the array!
         * 
         * Ex. 
         * int intArray[]; //declaring array 
         * intArray = new int[20]; // allocating memory to array
         * 
         * We can do the same thing, but with one line, as so:
         * int intArray[] = new int[20];
         */

        // Below, initialize the boolean and double arrays you declared above 
        // with array size 5 for both;


        // Array Default Values
        /*
        If we don't assign values to any indices of our newly created arrays and then try 
        to access them, Java is nice enough to not throw any Exceptions because the compiler
        is smart enough to assign defaults which prevent Exceptions being thrown.

        The defaults are listed below for reference :D
        */
        System.out.println("Array Default Values");
        System.out.println("Default Values for: String Array");
        String str[] = new String[2];
        for (String val : str)
            System.out.print(val + " ");

        System.out.println("\n\nDefault Values for: Int Array");
        int num[] = new int[2];
        for (int val : num)
            System.out.print(val + " ");

        System.out.println("\n\nDefault Values for: Double Array");
        double dnum[] = new double[2];
        for (double val : dnum)
            System.out.print(val + " ");

        System.out.println("\n\nDefault Values for: Boolean Array");
        boolean bnum[] = new boolean[2];
        for (boolean val : bnum)
            System.out.print(val + " ");

        System.out.println("\n\nDefault Values for: Object (reference type) Array");
        Object obtype[] = new Object[2];
        for (Object val : obtype)
            System.out.print(val + " ");

        /*
         * Because in Java objects are passed by reference, handling newly created
         * arrays and pointing them to already existing arrays can be dangerous.
         */

        System.out.println('\n');
        System.out.println("Array Reference Dangers");

        Object[] ob = { new Integer(2), new Integer(4) };
        Object[] ob1 = ob;

        for (int i = 0; i < ob.length; i++)
            System.out.print(ob[i] + " ");

        ob1[1] = new Integer(3);

        System.out.println();

        /*
         * Now loop through the first array 'ob' and see the output. Did you expect the
         * outcome?
         */
    }
}