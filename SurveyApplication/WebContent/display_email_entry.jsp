<!-- Header page include -->
<%@page import="data.UserIO"%>
<%@page import="java.util.*, business.User"%>
<jsp:include page="header.jsp" ></jsp:include>
<%! 
	public int count = 0;
%>
<%
	// variables to be passed to the text file
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String email = request.getParameter("email");
	String comment = request.getParameter("comment");
	
	String dateOfBirth = request.getParameter("dob");
	String information = request.getParameter("info");
	String newsletter = request.getParameter("newsletter");
	String contact = request.getParameter("contact");
	
	
	// get real path for email list 
	ServletContext sc = this.getServletContext(); 
	String path = sc.getRealPath("/WEB-INF/EmailList.txt");
			
	// use regular java objects
	User user = new User(firstName, lastName, email, comment);
	UserIO.add(user, path);
	
	
%>
<h1>Thanks for joining the email list</h1>

<p>Here is the information that you entered:</p>

<table>
		<tr>
			<td>First name:</td>
			<td><%=firstName %></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><%=lastName %></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><%=email %></td>
		</tr>
		<tr>
			<td>DOB:</td>
			<td><%=dateOfBirth %></td>
		</tr>
		<tr>
			<td>Information:</td>
			<td><%=information %></td>
		</tr>
		<tr>
			<td>Newsletter:</td>
			<td><%= newsletter = (newsletter == null) ? "False" : "True" %></td>
		</tr>
		<tr>
			<td>Contact Via:</td>
			<td><%=contact %></td>
		</tr>
		<tr>
			<td>Comment:</td>
			<td><%=comment %></td>
		</tr>
</table>
	
<br>

<p>To enter another email address, click on the back button <br>
button in your browser or the Return button shown<br>
below</p>

<form action="join_email_list.jsp" method="get">
	<input type="submit" value="Return">
</form>

<h3>Parameter Names</h3>
<%
	Enumeration<String> iter = request.getParameterNames();

	while(iter.hasMoreElements()){
		out.println(iter.nextElement() + "<br>");
	}
	
%>
<h3>Parameter Values (Paperback)</h3>
<%

	String[] params = request.getParameterValues("paperback");
	if(params == null){
		out.println("Empty parameter values" + "<br>");
	}
	else{
		int i = 0;
		while(i < params.length){
			out.println(params[i] + "<br>");
			i++;
		}
	}
%>
<p>Number of page visits = <%=count++ %></p>
<!-- Foooter page include -->
<jsp:include page="footer.jsp" ></jsp:include>