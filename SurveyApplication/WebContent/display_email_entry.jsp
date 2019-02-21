<!-- Header page include -->
<%@page import="java.util.*, business.User, data.UserIO"%>
<jsp:include page="header.jsp" ></jsp:include>

<%
	// Obtain user object from the request object
	User user = (User)request.getAttribute("user");
%>

<h1>Thanks for joining the email list</h1>

<p>Here is the information that you entered:</p>

<table>
		<tr>
			<td>First name:</td>
			<td><%=user.getFirstName() %></td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><%=user.getLastName() %></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><%=user.getEmailAddress() %></td>
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
<!-- Foooter page include -->
<jsp:include page="footer.jsp" ></jsp:include>