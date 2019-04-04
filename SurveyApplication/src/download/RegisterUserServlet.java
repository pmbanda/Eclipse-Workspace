package download;

import java.io.IOException;

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

@SuppressWarnings("serial")
public class RegisterUserServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// Obtain page parameter values (object data variables)
			String firstName = request.getParameter("firstname");
			String lastName = request.getParameter("lastname");
			String emailAddress = request.getParameter("email");
						 
			// Instantiate user
			User user = new User(firstName, lastName, emailAddress);
			
			// EmailList.txt absolute file path on server 
			ServletContext sc = this.getServletContext(); 
			String path = sc.getRealPath("/WEB-INF/EmailList.txt");
			
			UserIO.add(user, path);
			
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			String productCode = (String) session.getAttribute("productCode");
			String bandName = (String) session.getAttribute("bandName");
			
			
			Cookie emailCookie = new Cookie("emailCookie", emailAddress);
			emailCookie.setMaxAge(60 * 60 * 24 * 365 * 2);
			emailCookie.setPath("/"); // allow entire application to access cookie
			response.addCookie(emailCookie);
			
			String url = "/" + productCode + "_download.jsp";
							
			// URL for response forwarding
			RequestDispatcher dispatcher =  request.getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
						
		}
	}

			
