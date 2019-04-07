<!-- Header page include -->
<%@page import="java.util.*, business.User, data.UserIO"%>
<%@include file="header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<h1>Thanks for joining the email list</h1>

<legend>Here is the information that you entered:</legend>
<small><italics>
	<span style="color: red;">
		<%--=message--%>
	</span></italics></small>
<table class="table">
	<tr class="table-active">
		<td>First name:</td>
		<td>${user.firstName}</td>
	</tr>
	<tr class="table-active">
		<td>Last name:</td>
		<td>${user.lastName}</td>
	</tr>
	<tr class="table-active">
		<td>Email:</td>
		<td>${user.emailAddress}</td>
	</tr>
	<tr class="table-active">
		<td>Birth Date:</td>
		<td>${dateOfBirth}</td>
	</tr>
	<tr class="table-active">
		<td>Info:</td>
		<td>${ information}</td>
	</tr>
	<tr class="table-active">
		<td>Contact:</td>
		<td>${contact}</td>
	</tr>
	<tr class="table-active">
		<td>Song:</td>
		<td><c:forEach var="song" items="${favSong}">
				<c:out value="${song}"></c:out>
			</c:forEach></td>
	</tr>
	<tr class="table-active">
		<td>Newsletter:</td>
		<td>${newsletter}</td>
	</tr>
	<tr class="table-active">
		<td>Feedback:</td>
		<td>${feedback}</td>
	</tr>
</table>

<br>

<p>
	To enter another email address, click on the back button <br>
	button in your browser or the Return button shown<br> below
</p>

<form action="join_email_list.jsp" method="get">
	<input type="submit" class="btn btn-primary" value="Return">
</form>

<br>
<br>


<!-- Footer page include -->
<%@include file="footer.jsp"%>