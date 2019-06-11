import java.io.*;

public class FileExceptions {
    public static void main(String args[]) throws Exception {
        FileInputStream input1 = null;
        input1 = new FileInputStream("notThere.txt");
        input1.close();
    }
}
