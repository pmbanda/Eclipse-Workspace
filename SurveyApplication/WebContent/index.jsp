<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header page include -->
<%@include file="header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
<!--
a:hover {
	color: green;
}
-->
</style>

<h4>CD List</h4>
<hr>

<table cellpading="5" border="2" class="table">
  <tr valign="bottom">
    <th align="left">Description</th>
    <th align="left">Price</th>
    <th align="left"></th>
  </tr>
  <tr valign="top">
    <td>86 (the band) - True Life Songs and Pictures</td>
    <td>$14.95</td>
    <td><a href="<c:url value='cart?productCode=8601&bandName=86 (the band) - True Life Songs and Pictures&songTitle=Heat.mp3 />' />"/>Add To Cart</a></td>
  </tr>
  <tr valign="top">
    <td>Paddlefoot - The first CD</td>
    <td>$12.95</td>
    <td><a href="<c:url value='cart?productCode=pf01&bandName=Paddlefoot - The first CD&songTitle=If I can\'t.mp3 />' />"/>Add To Cart</a></td>
  </tr>
  <tr valign="top">
    <td>Paddlefoot - The Second CD</td>
    <td>$14.95</td>
    <td><a href="<c:url value='cart?productCode=pf02&bandName=Paddlefoot - The Second CD&songTitle=Back Down.mp3 />' />"/>Add To Cart</a></td>
  </tr>
  <tr valign="top">
    <td>Joe Rut - Genuine Wood Grained Finish</td>
    <td>$14.95</td>
    <td><a href="<c:url value='cart?productCode=jr01&bandName=Joe Rut - Genuine Wood Grained Finish&songTitle=Wanksta.mp3 />' />"/>Add To Cart</a></td>
  </tr>
</table>

<h4>Sample Songs</h4>
<hr>

<legend class="lead">
	<a href="<c:url value='checkUser?songTitle=Heat.mp3&productCode=8601&bandName=86 (the band) - True Life Songs and Pictures' />" /> 86 (the band) - True Life Songs and Pictures</a><br>
	
	<a href="<c:url value='checkUser?songTitle=If I can\'t.mp3&productCode=pf01&bandName=Paddlefoot - The first CD' />" />Paddlefoot - The first CD</a><br>
	
	<a href="<c:url value='checkUser?songTitle=Back Down.mp3&productCode=pf02&bandName=Paddlefoot - The Second CD' />" />Paddlefoot - The Second CD</a><br>
	
	<a href="<c:url value='checkUser?songTitle=Wanksta.mp3&productCode=jr01&bandName=Joe Rut - Genuine Wood Grained Finish' />" />Joe Rut - Genuine Wood Grained Finish</a><br>
	

	
</legend>



<!-- Footer page include -->
<%@include file="footer.jsp"%>