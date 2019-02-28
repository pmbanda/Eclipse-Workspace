package email;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import business.User;
import data.UserIO;

public class AddToEmailListServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1843030009760934100L;
	// global variable declaration
	@SuppressWarnings("unused")
	private final String TAG = "org.servlet.AddToEmailListServlet";
	String firstName, lastName, email, feedback, dateOfBirth, information, newsletter, contact, message;
	String []favSong;
	User user;
	private ServletContext SC = null;
	public HttpSession session;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		session = request.getSession();
		
		// Obtain page parameter values (object data variables)
		firstName = request.getParameter("firstname");
		lastName = request.getParameter("lastname");
		email = request.getParameter("email");
						
		// Parameters without object instance
		dateOfBirth = request.getParameter("dob");
		information = request.getParameter("info");
		contact = request.getParameter("contact");
		favSong = request.getParameterValues("song");
		feedback = request.getParameter("feedback");
		newsletter = request.getParameter("newsletter");
		
		// Instantiate user
		User user = new User(firstName, lastName, email);
		
		// validate parameters on server
		String message = "";
		String url = "";
		
		if(firstName.length() <= 3 || lastName.length() <= 3 || email.length() <= 3) {
			// Server validation error fail message
			message = "Please fill out all three text boxes";
			url = "/join_email_list.jsp";
		}else {
			message = "";
			
			// EmailList.txt absolute file path on server 
			SC = this.getServletContext(); 
			String path = SC.getRealPath("/WEB-INF/EmailList.txt");
			UserIO.add(user, path);
			
			url = "/display_email_entry.jsp";
		}
		
		session.setAttribute("user", user);
		//Set attribute to request object
		//request.setAttribute("user", user); 
		request.setAttribute("message", message); 
		request.setAttribute("dateOfBirth", dateOfBirth); 
		request.setAttribute("information", information);
		request.setAttribute("contact", contact); 
		request.setAttribute("favSong", favSong); 
		request.setAttribute("feedback", feedback); 
		request.setAttribute("newsletter", newsletter);
		
		
		// URL for response forwarding
		RequestDispatcher dispatcher =  request.getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
		//super.doPost(request, response);
		
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Do post method call if post is not invoked 
		doPost(request, response);
		
		//super.doGet(request, response);
	}
	
	
}
