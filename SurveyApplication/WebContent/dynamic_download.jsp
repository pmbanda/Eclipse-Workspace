<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header page include -->
<%@include file="header.jsp"%>

<h5>To register for our downloads, enter your name and email<br> address below. Then, click on the submit button. </h5>


		<table class="table" border="0" cellspacing="5">
			<tr>
				<th colspan="2">Dynamic Downloads</th>
			</tr>
			<tr>
				<th width="200">Band Title</th>
				<th width="150">Audio Format</th>
			</tr>
			<tr>
				<th>${bandName}</th>
				<th><audio src="/SurveyApplication/WebContent/sound/${productCode}/${songTitle}" controls></audio></th>
			</tr>
		</table>
		
		<legend class="lead"> <a href="<%=response.encodeUrl("index.jsp")%>">View a List Of Albums.</a></legend>
				
		<legend class="lead"> <a href="<%=response.encodeUrl("browser_info.jsp")%>">View all Cookies.</a></legend>
			
				
<!-- Footer page include -->
<%@include file="footer.jsp"%>