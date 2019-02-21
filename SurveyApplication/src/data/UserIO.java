package data;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import business.User;

public class UserIO {
	
	public static void add(User user, String filepath ) throws IOException {
		// file object to instantiate the file path
		File file = new File(filepath);
		PrintWriter out = new PrintWriter(new FileWriter(file, true));
		out.println( user.getEmailAddress() + "|" + user.getFirstName() + "|" + user.getLastName() + "|" + user.getComment());
		
		out.close();
	}
}