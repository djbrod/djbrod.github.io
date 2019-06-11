public class InfiniteLoops {
    public static void main(String[] args) {
        /*
         * Loops in any programming language are essential and can be incredibly useful
         * and convenient. Unfortunately, they can also be a pain and cause innumerable
         * amounts of headaches if not coded carefully!
         * 
         * Enter the painful pitfall of Infinite Loops! An infinite loop... as the name
         * may suggest, is a loop that doesn't stop (well at least until the Java
         * Runtime runs out of memory and throws an Exception, but we'll get into that
         * nightmare later :D). For now, let's look at what this means and looks like in
         * code!
         */

        // Look at this loop. An ordinary loop right; pay attention to the 'i++'
        for (int i = 0; i < 4; i++)
            System.out.println(i);

        // Look at this loop now. Take a second to think about the evaluation that will
        // happen
        // every iteration. Uncomment and then run the program when you think you've
        // predicted the outcome :)

        /*
         * while (1 > 0){ System.out.println("Will I stop printing?"); }
         */

        // TODO: How do you think you could accomplish the same thing using a for-loop?

    }
}