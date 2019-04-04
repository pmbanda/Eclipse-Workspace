package data;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import business.User;

public class UserIO {
	
	public static void add(User user, String filepath ) throws IOException {
		// file object to instantiate the file path
		File file = new File(filepath);
		PrintWriter out = new PrintWriter(new FileWriter(file, true));
		out.println(user.getEmailAddress() + "|" + user.getFirstName() + "|" + user.getLastName());
		
		out.close();
	}
	
	public static User getUser(String emailAddress, String filename) throws IOException {
		
        File file = new File(filename);
        BufferedReader in = new BufferedReader(
                new FileReader(file));
        
        User user = new User();
        String line = in.readLine();
        while (line != null) {
            StringTokenizer t = new StringTokenizer(line, "|");
            String email = t.nextToken();
            if (email.equalsIgnoreCase(emailAddress)) {
                String firstName = t.nextToken();
                String lastName = t.nextToken();
                user.setEmailAddress(emailAddress);
                user.setFirstName(firstName);
                user.setLastName(lastName);
            }
            line = in.readLine();
        }
        in.close();
        return user;
    }
}
