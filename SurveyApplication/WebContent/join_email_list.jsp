<!-- Header page include -->
<%@page import="java.util.*, business.User, data.UserIO"%>
<%@include file="header.jsp"%>
<%!
	static int count = 0;
	HttpSession session;
 %>
 <%
		session = request.getSession();
 %>

<div class="jumbotron" style="padding-top: 10px; padding-bottom: 10px">

	<div class="row">
		<div class="col-md-7">
		  <h1 class="display-6">Survey Application!</h1>
		  <p class="lead">If you have a moment we would appreciate if you fill out this survey </p>
		  <h4> Today: <span id="dateDisplay" style="color: green;"></span> </h4>
		</div>
		<div class="col-md-5" style="color:red">
			<p class="lead">Page Visits: <%=++count %> <br> 
			Browser <%=request.getHeader("user-agent") %><br>
			Session Id <%=session.getId() %><br>
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
				
				 
				<legend>How did you hear about us?</legend>
				<input type="radio" name="info" value="Search engine" checked>Search engine &nbsp
				<input type="radio" name="info" value="Word of mouth">Word of mouth &nbsp
				<input type="radio" name="info" value="Indeed">Indeed &nbsp
				<input type="radio" name="info" value="Monster">Monster &nbsp
				<input type="radio" name="info" value="Other">Other &nbsp
				
				<br>
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
		    <legend>Reuters RSS Feed</legend>
		    <p>
		    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut 			enim ad 	minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 			dolor in reprehenderit 	in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 			proident, sunt in culpa qui 	officia deserunt mollit anim id est laborum.
		    </p>
		    
		    <br>
		    <!-- start sw-rss-feed code --> 
				<script type="text/javascript"> 
				<!-- 
				rssfeed_url = new Array(); 
				rssfeed_url[0]="	http://feeds.reuters.com/Reuters/worldNews";  
				rssfeed_frame_width="350"; 
				rssfeed_frame_height="485"; 
				rssfeed_scroll="on"; 
				rssfeed_scroll_step="7"; 
				rssfeed_scroll_bar="on"; 
				rssfeed_target="_blank"; 
				rssfeed_font_size="18"; 
				rssfeed_font_face="Helvetica, sans-serif"; 
				rssfeed_border="on"; 
				rssfeed_css_url="https://feed.surfing-waves.com/css/style6.css"; 
				rssfeed_title="on"; 
				rssfeed_title_name="Reuters "; 
				rssfeed_title_bgcolor="#3366ff"; 
				rssfeed_title_color="#fff"; 
				rssfeed_title_bgimage=""; 
				rssfeed_footer="off"; 
				rssfeed_footer_name="rss feed"; 
				rssfeed_footer_bgcolor="#fff"; 
				rssfeed_footer_color="#333"; 
				rssfeed_footer_bgimage=""; 
				rssfeed_item_title_length="60"; 
				rssfeed_item_title_color="#666"; 
				rssfeed_item_bgcolor="#fff"; 
				rssfeed_item_bgimage=""; 
				rssfeed_item_border_bottom="on"; 
				rssfeed_item_source_icon="off"; 
				rssfeed_item_date="off"; 
				rssfeed_item_description="on"; 
				rssfeed_item_description_length="120"; 
				rssfeed_item_description_color="#666"; 
				rssfeed_item_description_link_color="#333"; 
				rssfeed_item_description_tag="off"; 
				rssfeed_no_items="0"; 
				rssfeed_cache = "8cae2e160e532aba103ffcb692a89b06"; 
				--> 
			</script> 
			<script type="text/javascript" src="//feed.surfing-waves.com/js/rss-feed.js"></script> 
			<!-- The link below helps keep this service FREE, and helps other people find the SW widget. Please be cool and keep it! 			Thanks. --> 
			<div style="color:#ccc;font-size:10px; text-align:left; width:260;">powered by <a href="https://surfing-waves.com" 				rel="noopener" target="_blank" style="color:#ccc;">Surfing Waves</a></div> 
			<!-- end sw-rss-feed code -->
		    
		    
		 </div>
	</div>


<!-- Footer page include -->
<%@include file="footer.jsp"%>