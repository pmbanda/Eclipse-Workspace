<!-- Header page include -->
<jsp:include page="header.jsp" ></jsp:include>

<h2>Survey</h2>

<p>If you have a moment we would appreciate if you fill out this survey</p>

<h3>Your Information</h3>
<br>

<form action="addToEmailList" method="get">

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
		<tr>
			<td>DOB:</td>
			<td><input type="date" name="dob" placeholder="Enter DOB"></td>
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
	<select name="contact">
		<option value="Email">Email</option>
		<option value="Phone">Phone</option>
		<option value="PostalMail">Postal mail</option>
	</select>
	
	<br><br>
	
	<h3>Paper Back?</h3>
	<select name="paperback" multiple>
		<option value="Newspaper">Newspaper</option>
		<option value="Calendar">Calendar</option>
		<option value="Book">Book</option>
	</select>
	
	<br><br>
	
	<h3>Comment</h3>
	 <textarea name="comment" rows="5" cols="40" placeholder="Enter your comment here"></textarea>
	
	<br><br>
	<input type="submit" value="Submit" onclick="return validate(this.form)"> 
	<input type="reset" value="Reset">
</form>
<br><br>
<p>(JAVA DATE)Todays Date is <%= new java.util.Date().toString() %></p>
<p>(JAVASCRIPT DATE)</p>
<h3 id="dateDisplay"></h3>

<script type="text/javascript" src="script/form_entry.js">
</script>

<!-- Footer page include -->
<jsp:include page="footer.jsp" ></jsp:include>