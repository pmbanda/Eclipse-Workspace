<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header page include -->
<%@include file="header.jsp"%>

<style>
<!--
a:hover {
	color: green;
}
-->
</style>

<h4>List of albums </h4>

<legend class="lead">
	<a href="<%= response.encodeUrl("checkUser?songTitle=Heat.mp3&productCode=8601&bandName=86 (the band) - True Life Songs and Pictures")%>">86 (the band) - True Life Songs and Pictures</a><br>
	
	<a href="<%= response.encodeUrl("checkUser?songTitle=If I can't.mp3&productCode=pf01&bandName=Paddlefoot - The first CD")%>">Paddlefoot - The first CD</a><br>
	
	<a href="<%= response.encodeUrl("checkUser?songTitle=Back Down.mp3&productCode=pf02&bandName=Paddlefoot - The Second CD")%>">Paddlefoot - The Second CD</a><br>
	
	<a href="<%= response.encodeUrl("checkUser?songTitle=Wanksta.mp3&productCode=jr01&bandName=Joe Rut - Genuine Wood Grained Finish")%>">Joe Rut - Genuine Wood Grained Finish</a><br>
	
	
</legend>



<!-- Footer page include -->
<%@include file="footer.jsp"%>