<!-- Header page include -->
<%@page import="java.util.*, business.User, data.UserIO"%>
<jsp:include page="header.jsp" ></jsp:include>

<%
	// Obtain user object from the request object
	User user = (User)request.getAttribute("user");

	String message = (String)request.getAttribute("message");
	String dateOfBirth = (String)request.getAttribute("dateOfBirth");
	String information = (String)request.getAttribute("information");
	String contact = (String)request.getAttribute("contact");
	String favSong = (String)request.getAttribute("favSong");
	String feedback = (String)request.getAttribute("feedback");
	String newsletter = (String)request.getAttribute("newsletter"); 
	
	if(user == null){
		user = new User();
	}
	if(message == null){
		message = "";
	}

%>
<div class="container">
	<h1>Thanks for joining the email list</h1>

	<p>Here is the information that you entered:</p>
	<small><italics><span style="color:red;"><%--=message--%></span></italics></small>
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
			<tr>
				<td>Birth Date:</td>
				<td><%=dateOfBirth == null ? "" : dateOfBirth %></td>
			</tr>
			<tr>
				<td>Information:</td>
				<td><%=information == null ? "" : information  %></td>
			</tr>
			<tr>
				<td>Contact:</td>
				<td><%=contact == null ? "" : contact  %></td>
			</tr>
			<tr>
				<td>Song:</td>
				<td><%=favSong == null ? "" : favSong  %></td>
			</tr>
			<tr>
				<td>Newsletter:</td>
				<td><%=newsletter == null ? "False" : "True"  %></td>
			</tr>
			<tr>
				<td>Feedback:</td>
				<td><%=feedback == null ? "" : feedback  %></td>
			</tr>
			
	</table>
		
	<br>
	
	<p>To enter another email address, click on the back button <br>
	button in your browser or the Return button shown<br>
	below</p>
	
	<form action="join_email_list.jsp" method="get">
		<input type="submit" value="Return">
	</form>
	
<br><br>
</div>

<!-- Foooter page include -->
<jsp:include page="footer.jsp" ></jsp:include>