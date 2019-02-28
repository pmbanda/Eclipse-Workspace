<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.Cookie" %>
<!-- Header page include -->
<%@include file="header.jsp"%>
<%

	Random rand = new Random(System.currentTimeMillis());
	String seedValue = Integer.valueOf((int)rand.nextLong()).toString();
	
	Cookie myCookie = new Cookie("UserId",seedValue);
	myCookie.setComment("Initial Cookie Test");
	myCookie.setPath("/");
	myCookie.setVersion(1);
	response.addCookie(myCookie);
%>
<div class="jumbotron" style="padding-top: 10px; padding-bottom: 10px">

	<div class="row">
		<div class="col-md-7">
		
		  <h4>Browser Information Page!</h4>
		  <div class="lead">
			  <ul>
			  	<li>The following contains the browser details:</li>
		  		<li>Browser <%=request.getHeader("user-agent") %></li>
		  		<li>Session Id <%=session.getId() %></li>
		  		<li>IP Address <%=request.getRemoteAddr() %></li>
			  </ul>
		  </div>
		  
		  <br>
		  
		  <h4>Cookies</h4>
		  
		  <legend class="lead">Heres a table with all the cookies that this<br>
		  browser is sending to the current server</legend>
		  
		  <br>
		  <table class="table">
		  <%
		  	Cookie[] cookie = request.getCookies();
		  
		  	if(cookie != null){
		  		for(int i = 0; i < cookie.length; i++){%>
		  		<tr class="table-active">
		  			<td><%=cookie[i].getName() %></td>
		  			<td><%=cookie[i].getValue() %></td>
		  		</tr>
		  	<%}
		  	}
		  %>
		  </table>
		  
		  
		</div>
	</div>
	

</div>
			<p>
		    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 			enim ad 	minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 			dolor in reprehenderit 	in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 			proident, sunt in culpa qui 	officia deserunt mollit anim id est laborum.
		    </p>
		    <p>
		    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 			enim ad 	minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 			dolor in reprehenderit 	in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 			proident, sunt in culpa qui 	officia deserunt mollit anim id est laborum.
		    </p>
		    <p>
		    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 			enim ad 	minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 			dolor in reprehenderit 	in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 			proident, sunt in culpa qui 	officia deserunt mollit anim id est laborum.
		    </p>			

<!-- Footer page include -->
<%@include file="footer.jsp"%>