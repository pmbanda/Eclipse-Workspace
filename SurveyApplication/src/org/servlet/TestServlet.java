package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet{

	private static final String TAG = "org.servlet.TestServlet";
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html"); // sets the content type to be displayed
		PrintWriter out = resp.getWriter();
		
		String fname = req.getParameter("firstname");
		String lname = req.getParameter("lastname");
		String email = req.getParameter("email");
		
		
		// output message to the console for debugging purposes
		System.out.printf("%s first_name %s\n", TAG ,fname );
		System.out.printf("%s last_name %s\n", TAG ,lname);
		System.out.printf("%s email_address %s\n", TAG ,email);
		
		// print message to the log file
		log("first name => " + fname);
		log("first name => " + lname);
		log("first name => " + email);
		
		// display value to the page
		out.println("<h2>Hello " + fname + " " + lname + " " + " from Servlet::<h2>");
		out.println("<h2>your email address is  " + email + "<h2>");
		
		out.close();// close resources in form of a stream
		
		super.doPost(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO:: do post instance 
		doPost(req, resp);
		
		super.doGet(req, resp);
	}
}
