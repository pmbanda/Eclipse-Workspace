<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header page include -->
<%@include file="header.jsp"%>
<% 
		String productCode = (String)session.getAttribute("productCode");
%>

<h4>Downloads</h4>

<h5>To register for our downloads, enter your name and email<br> address below. Then, click on the submit button. </h5>


		<table class="table" border="0" cellspacing="5">
			<tr>
				<td colspan="2">86 (the band) - True Life Songs and Pictures</td>
			</tr>
			<tr>
				<th width="200">Song Title</th>
				<th width="150">Audio Format</th>
			</tr>
			<tr>
				<th>You Are a Star</th>
				<th><a href="/SurveyApplication/WebContent/sound/<%=productCode%>/If I Can't.mp3">Mp3</a></th>
			</tr>
		</table>
		
		<legend class="lead"><a href="<%=response.encodeUrl("index.jsp")%>">View a List Of Albums.</a></legend>
				
		<legend class="lead"><a href="<%=response.encodeUrl("browser_info.jsp")%>">View all Cookies.</a></legend>
			
				
<!-- Footer page include -->
<%@include file="footer.jsp"%>