package data;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.time.Clock;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import business.User;

public class UserIO {
	
	public static void add(User user, String filepath ) throws IOException {
		// file object to instantiate the file path
		File file = new File(filepath);
		PrintWriter out = new PrintWriter(new FileWriter(file, true));
		out.println( LocalTime.now().getHour() + ":" + LocalTime.now().getMinute() + ":" + LocalTime.now().getSecond() + "," + 						user.getEmailAddress() + "," + user.getFirstName() + "," + user.getLastName());
		
		out.close();
	}
}
