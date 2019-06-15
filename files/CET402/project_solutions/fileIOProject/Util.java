import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class Util {
    static final int MAX_REDIRECTS = 8;
    static String resourceLink = "http://djbrod.github.io/files/CET402/ExampleJavaUsers.txt";

    public static URLConnection getExampleJavaUsers()
    {
        HttpURLConnection connection = null;
        try
        {
            URL connUrl = new URL(resourceLink);
            connection = (HttpURLConnection) connUrl.openConnection();

            /*if (connection.getResponseCode() == HttpURLConnection.HTTP_MOVED_PERM)
                System.out.println("Moved");*/

            String redirect = connection.getHeaderField("Location");

            for (int i = 0; i < MAX_REDIRECTS ; i++)
            {
                if (redirect != null)
                {
                    connection = (HttpURLConnection) new URL(redirect).openConnection();
                    redirect = connection.getHeaderField("Location");
                }
                else
                {
                    break;
                }
            }
        }
        catch (Exception e) { e.printStackTrace(); }

        return connection;
    }
}
