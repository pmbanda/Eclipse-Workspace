<!-- Header page include -->
<%@page import="java.util.*, business.User, data.UserIO"%>
<jsp:include page="header.jsp" ></jsp:include>

<h2>Survey</h2>

<p>If you have a moment we would appreciate if you fill out this survey</p>

<h4>Your Information</h4>
<br>
<div>

</div>
<form action="addToEmailList" method="get">

	<table>
		<tr>
			<td>First name:</td>
			<td><input type="text" class="form-control" name="firstname" required placeholder="Enter first name"> </td>
		</tr>
		<tr>
			<td>Last name:</td>
			<td><input type="text" class="form-control" name="lastname" required placeholder="Enter last name"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="email" class="form-control" name="email" required placeholder="Enter email address"></td>
		</tr>
		<tr>
			<td>DOB:</td>
			<td><input type="date" class="form-control" name="dob" placeholder="Enter DOB"></td>
		</tr>
	</table>
	
	<br>
	 
	<br><br>
	 
	<h3>How did you hear about us?</h3> <br>
	<input type="radio" name="info" value="Search engine">Search engine
	<input type="radio" name="info" value="Word of mouth">Word of mouth 
	<input type="radio" name="info" value="Indeed" checked>Indeed 
	<input type="radio" name="info" value="Monster">Monster 
	<input type="radio" name="info" value="Other">Other 
	
	<br><br>
	 
	<h3>Would you like to receive announcements about new CD's and special offers?</h3> <br> 
	<input type="checkbox" name="newsletter" checked>YES. id like to receive information about new CD's and special offers.<br> 
	
	<br><br>
	
	
	<h3>Please contact me by?</h3>
	<select name="contact" class="custom-select" >
		<option value="Email">Email</option>
		<option value="Phone">Phone</option>
		<option value="PostalMail">Postal mail</option>
	</select>
	
	<br><br>
	
	<h3>Paper Back?</h3>
	<select name="paperback" multiple class="custom-select">
		<option value="Newspaper">Newspaper</option>
		<option value="Calendar">Calendar</option>
		<option value="Book">Book</option>
	</select>
	
	<br><br>
	
	<h3>Comment</h3>
	 <textarea name="comment" rows="5" cols="40" placeholder="Enter your comment here"></textarea>
	
	<br><br>
	<input type="submit" class="btn btn-primary" value="Submit" onclick="return validate(this.form)"> 
	<input type="reset" class="btn btn-primary" value="Reset">
</form>
<br><br>

<!-- Footer page include -->
<jsp:include page="footer.jsp" ></jsp:include>