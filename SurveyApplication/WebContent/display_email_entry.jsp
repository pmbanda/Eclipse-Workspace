<!-- Header page include -->
<%@page import="java.util.*, business.User, data.UserIO"%>
<%@include file="header.jsp"%>

<%
	// Obtain user object from the request object
	//User user = (User)request.getAttribute("user");
	User user = (User)session.getAttribute("user");

	String message = (String)request.getAttribute("message");
	String dateOfBirth = (String)request.getAttribute("dateOfBirth");
	String information = (String)request.getAttribute("information");
	String contact = (String)request.getAttribute("contact");
	String[] favSong = (String[])request.getAttribute("favSong");
	String feedback = (String)request.getAttribute("feedback");
	String newsletter = (String)request.getAttribute("newsletter"); 
	
	if(user == null){
		user = new User();
	}
	if(message == null){
		message = "";
	}

%>

	<h1>Thanks for joining the email list</h1>

	<legend>Here is the information that you entered:</legend>
	<small><italics><span style="color:red;"><%--=message--%></span></italics></small>
	<table class="table" >
			<tr class="table-active">
				<td>First name:</td>
				<td><%=user.getFirstName() %></td>
			</tr>
			<tr class="table-active">
				<td>Last name:</td>
				<td><%=user.getLastName() %></td>
			</tr>
			<tr class="table-active">
				<td>Email:</td>
				<td><%=user.getEmailAddress() %></td>
			</tr>
			<tr class="table-active">
				<td>Birth Date:</td>
				<td><%=dateOfBirth == null ? "" : dateOfBirth %></td>
			</tr>
			<tr class="table-active">
				<td>Info:</td>
				<td><%=information == null ? "" : information  %></td>
			</tr>
			<tr class="table-active">
				<td>Contact:</td>
				<td><%=contact == null ? "" : contact  %></td>
			</tr>
			<tr class="table-active">
				<td>Song:</td>
				<td> 
					<%
						if(favSong != null && favSong.length > 1  )
						{
							for(int i = 0; i < favSong.length; i++)
							{
									out.println(favSong[i] + " "); 
							}
						}
						else if(favSong != null && favSong.length == 1)
						{
								out.println(favSong[0]);
					    }else{
					    	out.println("");
					    }
					%>
				</td>
			</tr> 
			<tr class="table-active">
				<td>Newsletter:</td>
				<td><%=newsletter == null ? "False" : "True"  %></td>
			</tr>
			<tr class="table-active">
				<td>Feedback:</td>
				<td><%=feedback == null ? "" : feedback  %></td>
			</tr>
			
	</table>
		
	<br>
	
	<p>To enter another email address, click on the back button <br>
	button in your browser or the Return button shown<br>
	below</p>
	
	<form action="join_email_list.jsp" method="get">
		<input type="submit" class="btn btn-primary" value="Return">
	</form>
	
<br><br>


<!-- Footer page include -->
<%@include file="footer.jsp"%>