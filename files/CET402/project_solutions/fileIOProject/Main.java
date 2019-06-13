import java.io.*;

public class Main {

    static String outputFolderPath = "";
    static String filteredUsersFile = "filteredExampleJavaUsers.txt";

    public static void main(String[] args) {
        // Create an ArrayList to hold our users
        int userIndex = 0;
        User[] users = new User[100];

        // Open the datasource file using a Buffered reader
        BufferedReader fileReader = null;
        try {
            fileReader = new BufferedReader(new InputStreamReader(Util.getExampleJavaUsers().getInputStream()));

            // skip first line because it's csv header
            fileReader.readLine();

            String line;
            while ((line = fileReader.readLine()) != null) {
                // Split the read line by ',' to get the properties of the user
                String[] props = line.split(",");

                // add the new User to the ArrayList
                users[userIndex++] = new User(
                        // For the Id property, parse the integer from the property because it is a String
                        // and we need an int for the User constructor to work with
                        Integer.parseInt(props[0]),
                        props[1],
                        props[2],
                        props[3],
                        props[4],
                        props[5],
                        props[6],
                        props[7]
                );
            }
        }
        catch (Exception e) {e.printStackTrace();}

        // print out users
        for (int i = 0; i < users.length; i++) {
            System.out.println(users[i]);
        }

        // filter users by Id
        for (int i = 0; i < users.length; i++) {
            if (users[i].Id > 50)
                users[i] = null;
        }

        System.out.println(users.length);

        // Write filtered Users to output file
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(outputFolderPath + filteredUsersFile);

            for (int i = 0; i < users.length; i++) {
                if (users[i] != null) {
                    String filteredUser = users[i].toString() + "\n";
                    fileOutputStream.write(filteredUser.getBytes());
                }
            }
        }
        catch (Exception e) {e.printStackTrace();}

        // Close all input and output streams if not null
        try {
            if (fileReader != null) fileReader.close();
            if (fileOutputStream != null) fileOutputStream.close();
        }
        catch (Exception e){e.printStackTrace();}
    }
}
