<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page isErrorPage="true" %>

<!-- Header page include -->
<jsp:include page="header.jsp" ></jsp:include>


<div class="jumbotron">
  <h2 class="display-6" style="color: red;">Global Error Page (Java::Exception)</h2>
  <legend>Sorry:: Java has thrown an exception</legend>
  <p class="lead" >This page shows that you have encountered an error! please don't panic and remember it's not the end of the world. Write down the date and time of error or capture a screen shot and i will fix it later ( via Apache Tomcat Logs ). Thank you for your patience. </p>
	<form action="join_email_list.jsp" method="get">
		<input type="submit" class="btn btn-primary" value="Return">
	</form>
</div>

<div>
<h2 style="color: red;">Details</h2>
<p>
Type: <%= exception.getClass() %> <br>
Message: <%= exception.getMessage()%> <br>
</p>

</div>


<!-- Footer page include -->
<jsp:include page="footer.jsp" ></jsp:include>