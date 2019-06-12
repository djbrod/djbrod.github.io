import java.io.File;
import java.io.IOException;

public class CreatingAFile {
    public static void main(String[] args) {
        /*
         * Creating files in Java will come in handy sometimes, so it's good to know how
         * you'd go about doing it. Let's create a simple file in the 'C' directory of
         * your computer; keep in mind when you run this Java file if all goes well, the
         * file will have been created and you will probably want to delete the file
         * from your drive, unless you just want to keep a test file :D
         */

        try {
            /*
             * To start, we'll need to instantiate an object of the File class, which is a
             * utility class that Java gives us to work with Files. The File class
             * constructor has many different overloads and versions for handling different
             * types and ways of accessing and working with files, but what we want right
             * now is the one that lets us specify a path to the file (including the file
             * name and extension) that we want to create.
             */
            File file = new File("C:\\newfile.txt");
            /*
             * The File class has a handy method called 'createNewFile', which as the name
             * suggests, handles the creation of the file we specified we want to make in
             * the path. We want to know whether this method call was successful, so we save
             * the result into a variable 'fileWasCreated'. This File class method returns
             * true if the named file does not exist and was successfully created; and false
             * if the named file already exists.
             */
            boolean fileWasCreated = file.createNewFile();

            if (fileWasCreated) {
                System.out.println("File has been created successfully");
            } else {
                System.out.println("File already present at the specified location");
            }
        }
        /*
         * We also want to catch any Exceptions that may be thrown for any number of
         * reasons. One reason could be that the path was invalid, or the Java runtime
         * doesn't have the permissions to access the path specified to create the file.
         */
        catch (IOException e) {
            System.out.println("Exception Occurred:");
            e.printStackTrace();
        }
    }
}