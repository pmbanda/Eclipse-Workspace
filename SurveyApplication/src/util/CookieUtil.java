package util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;

@SuppressWarnings("serial")
public class CookieUtil extends HttpServlet {
	
	public static String getCookieValue(Cookie[] cookies, String userName) {
		
		String cookieValue = "";
		
		if(cookies != null) {
			
			for(int i = 0; i < cookies.length; i++) {
				if(cookies[i].getName().equals(userName))
					cookieValue = cookies[i].getValue();
			}
		}
		return cookieValue;
	}
}
