<!-- Header page include -->
<%@page import="java.util.*, business.User, data.UserIO"%>
<jsp:include page="header.jsp" ></jsp:include>
<%!
	
	static int count = 0;
 %>
 <%
 	Enumeration<String> headers = request.getHeaderNames();
 %>

<div class="jumbotron" style="padding-top: 10px; padding-bottom: 10px">

	<div class="row">
		<div class="col-md-7">
		  <h1 class="display-6">Survey Application!</h1>
		  <p class="lead">If you have a moment we would appreciate if you fill out this survey </p>
		  <h4> Today: <span id="dateDisplay" style="color: green;"></span> </h4>
		</div>
		<div class="col-md-5">
			<p class="lead">Page Visits: <%=++count %> <br> 
			Browser <%=request.getHeader("user-agent") %>
			</p>
			
		</div>
	</div>

</div>

<legend>Your Information</legend>

	<div class="row">
			<div class="col-md-6">
				<!--Column left-->
				<form action="addToEmailList" method="get">
			
				<table class="table">
					<tr>
						<td>First name:</td>
						<td><input type="text" class="form-control" name="firstname" required placeholder="Enter first name"> </td>
					</tr>
					<tr>
						<td>Last name:</td>
						<td><input type="text" class="form-control" name="lastname" required placeholder="Enter last name"></td>
					</tr >
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
				 
				<legend>How did you hear about us?</legend>
				<input type="radio" name="info" value="Search engine" checked>Search engine <br>
				<input type="radio" name="info" value="Word of mouth">Word of mouth <br>
				<input type="radio" name="info" value="Indeed">Indeed <br> 
				<input type="radio" name="info" value="Monster">Monster <br>
				<input type="radio" name="info" value="Other">Other <br>
				
				<br>
				
				<legend>Please contact me by?</legend>
				<select name="contact">
					<option value="Email">Email</option>
					<option value="Phone">Phone</option>
					<option value="Whatsapp">Whatsapp</option>
					<option value="Reddit">Reddit</option>
					<option value="Snapchat">Snap Chat</option>
				</select>
				
				<br>
				<br>
				
				<legend>Favorite song genre?</legend>
				<select name="song" multiple>
					<option value="Country">Country</option>
					<option value="Rock">Rock</option>
					<option value="Rap">Rap</option>
					<option value="Pop">Pop</option>
					<option value="HipHop">Hip Hop</option>
					<option value="RnB">Rhythm and Blues</option>
					<option value="Jazz">Jazz</option>
				</select>
				
				<br><br>
				
				<legend>Please enter your feedback</legend>
				 <textarea name="feedback" rows="5" cols="40" placeholder="Enter your comment here"></textarea>
				
				<br>
				<legend>Receive announcements and special offers?</legend> 
				<input type="checkbox" name="newsletter" checked>YES. id like to receive information about new CD's and special offers.<br> 
				
				<br>
				<input type="submit" class="btn btn-primary" value="Submit" onclick="return validate(this.form)"> 
				<input type="reset" class="btn btn-primary" value="Reset">
			</form>
		</div>
		<div class="col-md-6">
		    <!--Column right-->
		    <legend>Newsfeed</legend>
		    <p>
		    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 			enim ad 	minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 			dolor in reprehenderit 	in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 			proident, sunt in culpa qui 	officia deserunt mollit anim id est laborum.
		    </p>
		    
		    <p>
		    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 			enim ad 	minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 			dolor in reprehenderit 	in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 			proident, sunt in culpa qui 	officia deserunt mollit anim id est laborum.
		    </p>
		    
		    <p>
		    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 			enim ad 	minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 			dolor in reprehenderit 	in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 			proident, sunt in culpa qui 	officia deserunt mollit anim id est laborum.
		    </p>
		    
		 </div>
	</div>


<!-- Footer page include -->
<jsp:include page="footer.jsp" ></jsp:include>