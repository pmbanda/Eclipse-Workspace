package email;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import business.User;
import data.UserIO;

public class AddToEmailListServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1843030009760934100L;
	// global variable declaration
	private final String TAG = "org.servlet.AddToEmailListServlet";
	private static int count = 0;
	String firstName, lastName, email, comment, dateOfBirth, information, newsletter, contact;
	private ServletContext SC = null;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// Response values fetch
		firstName = request.getParameter("firstname");
		lastName = request.getParameter("lastname");
		email = request.getParameter("email");
		comment = request.getParameter("comment");
		dateOfBirth = request.getParameter("dob");
		information = request.getParameter("info");
		newsletter = request.getParameter("newsletter");
		contact = request.getParameter("contact");
		
		
		// EmailList.txt absolute file path on server 
		SC = this.getServletContext(); 
		String path = SC.getRealPath("/WEB-INF/EmailList.txt");
				
		// Instantiate user
		User user = new User(firstName, lastName, email);
		UserIO.add(user, path);
		
		request.setAttribute("user", user); // Set attribute to request object
		
		// URL for response forwarding
		String url = "/display_email_entry.jsp";
		RequestDispatcher dispatcher =  request.getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
		// Debugging message
		System.out.printf("%s first_name %s\n", TAG ,firstName );
		System.out.printf("%s last_name %s\n", TAG ,lastName);
		System.out.printf("%s email_address %s\n", TAG ,email);
		
		response.sendRedirect("http://www.google.com");
	
		super.doPost(request, response);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// Do post method call if post is not invoked 
		doPost(req, resp);
		
		super.doGet(req, resp);
	}
}
