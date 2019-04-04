<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header page include -->
<%@include file="header.jsp"%>
<h4>Download Registration</h4>
<br>
<h5>To register for our downloads, enter your name and email<br> address below. Then, click on the submit button. </h5><br>


			<form action="<%=response.encodeUrl("registerUser") %>" method="post">
				<table class="table" border="0" cellspacing="5">
					<tr>
						<td>First name:</td>
						<td><input type="text" class="form-control" name="firstname" required placeholder="First Name"> </td>
					</tr>
					<tr>
						<td>Last name:</td>
						<td><input type="text" class="form-control" name="lastname" placeholder="Last Name"></td>
					</tr >
					<tr>
						<td>Email:</td>
						<td><input type="email" class="form-control" name="email" required placeholder="Email"></td>
					</tr>
				</table>
				<br>
				
				
				<input type="submit" class="btn btn-primary" value="Submit" onclick="return validate(this.form)"> 
				<input type="reset" class="btn btn-primary" value="Reset">
			</form>
				
<!-- Footer page include -->
<%@include file="footer.jsp"%>