<jsp:directive.include file="header.jsp"/>

<form action="testServlet" method="post">

	<table>
		<tr>
			<td>First name:</td>
			<td><input type="text" name="firstname" required placeholder="Enter first name"> </td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><input type="text" name="lastname" required placeholder="Enter last name"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="email" name="email" required placeholder="Enter email address"></td>
		</tr>
	</table>
	
	<br><br>
	<input type="submit" value="Submit"> 
	<input type="reset" value="Reset">
</form>
<jsp:directive.include file="footer.jsp"/>