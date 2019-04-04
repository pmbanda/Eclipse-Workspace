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
import util.CookieUtil;

public class CheckUserServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	User user = null;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// obtain product code and assign to the session object
		String productCode = request.getParameter("productCode");
		String bandName = request.getParameter("bandName");
		String songTitle = request.getParameter("songTitle");
		
		HttpSession session = request.getSession();
		session.setAttribute("productCode", productCode);
		session.setAttribute("bandName", bandName);
		session.setAttribute("songTitle", songTitle);
		
		// obtain the user's session to 
		user = (User)session.getAttribute("User");
		String url = "";
		
		// if the user object does not exist check for the email cookie
		if(user == null) {
			Cookie[] cookies = request.getCookies();
			
			String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");
			
			// if email cookie doesn't exist go to the registration page
			if(emailAddress == null || emailAddress == "") {
				url = "/register.jsp";
			}else {
				// EmailList.txt absolute file path on server 
				ServletContext sc = getServletContext(); 
				String path = sc.getRealPath("/WEB-INF/EmailList.txt");
				
				user = UserIO.getUser(emailAddress, path);
				
				url = "/dynamic_download.jsp";
				//url = "/" + productCode + "_download.jsp";
			}
			
		}
		// if the user exists skip the registration page
		else {
			url = "/dynamic_download.jsp";
		}
		
		// forward to the view
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
				
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
