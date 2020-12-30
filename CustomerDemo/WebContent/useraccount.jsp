<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Current Customer Details</title>
<!--Include css file-->
<link rel="stylesheet" type ="text/css" href="Cssfile/Currnet customer pyamnt details css.css">

<style>
	table {
		width: 475px;
		border-collapse: collapse;
	}
	table, th, td {
		border: 3px solid rgb(75, 205, 245);
	}
	th, td {
		padding: 10px;
	}
	
</style>

</head>
<body>
	<hr>
	<img class = "logo" src="images/" alt="Smart Home Systems"/>
	<h1 class = "title"><center>TravelAnywhere</center></h1>
	<h3 class = "title2"><center>HOTELS, RESORTS, VILLAS & MORE</center></h3>
 <hr>

<ul class = "mainmenu">
	<li><a href = "#">Home</a></li>
	<li><a href = "AboutUs.php">Hotels</a></li>
	<li><a href = "contactus.php">Villas</a></li>
	<li><a href = "Smart Systems Product-Page.php">Resorts</a></li>
	<li><a href = "Smart Systems Systems-Page.html">Your Bookings</a></li>
</ul>
<hr>



<div class="box">
<div class = "box-reg">Registerd Customer Payment Details</div>
	<form class="login-form" action="log" method="post">
	
	
	
	<table>
	<c:forEach var="cus" items="${cusDetails}">
		
	<h1>Mr / Mrs .${cus.name}</h1>



<c:set var="id" value="${cus.id}"/>
<c:set var="name" value="${cus.name}"/>
<c:set var="email" value="${cus.email}"/>
<c:set var="cardnumber" value="${cus.cardnumber}"/>
<c:set var="expiredate" value="${cus.expiredate}"/>
<c:set var="securitycode" value="${cus.securitycode}"/>
<c:set var="amount" value="${cus.amount}"/>
<c:set var="username" value="${cus.userName}"/>
<c:set var="password" value="${cus.password}"/>





<div class ="tablecss">
<tr>
	<td>Customer ID</td>
	<td>${cus.id}</td> 
</tr>
<tr>
	<td>Customer Name</td>
	<td>${cus.name}</td>
</tr>
<tr>
	<td>Customer Email</td>
	<td>${cus.email}</td>
</tr>



<tr>
	<td>Customer Card Number</td>
	<td>${cus.cardnumber}</td>
</tr>
<tr>
	<td>Customer Expire Date</td>
	<td>${cus.expiredate}</td>
</tr>
<tr>
	<td>Customer Security Code</td>
	<td>${cus.securitycode}</td>
</tr>
<tr>
	<td>Customer Amount</td>
	<td>${cus.amount}</td>
</tr>
				
<tr>
	<td>Customer User Name</td>
	<td>${cus.userName}</td>
</tr>
<tr>
	<td>Customer Password</td>
	<td>${cus.password}</td>
</tr>




</c:forEach>
 
</table>



<c:url value="updatecustomer.jsp" var="cusupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="cardnumber" value="${cardnumber}"/>
	<c:param name="expiredate" value="${expiredate}"/>
	<c:param name="securitycode" value="${securitycode}"/>
	<c:param name="amount" value="${amount}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
	
	
</c:url>



<center> 
	<!-- pay now button -->
		 <a href="PaymentSuccessfull.jsp"> 
		<input type="button" name="update" value="Pay Now">
		</a> 

<!-- Update button -->
<a href="${cusupdate}">
<input type="button" name="update" value="Edit">
</a>

<!-- delete function -->
<c:url value = "deletecustomer.jsp" var = "cusdelete"> 

	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="cardnumber" value="${cardnumber}"/>
	<c:param name="expiredate" value="${expiredate}"/>
	<c:param name="securitycode" value="${securitycode}"/>
	<c:param name="amount" value="${amount}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>

</c:url>
<!-- Delete button -->
<a href="${cusdelete}">
<input type="button" name="delete" value="Delete Account">
</a>



</center>




</form>
</div>

<footer>
	<div class = "bottom">
		<center>
		<table class = "socialmedia" width = "80%">
			<tr>
				<th><img class = "social" src = "images/images/FacebookLogo.png"><br><a href ="http:\\www.facebook.com"/>Facebook</th>
				<th><img class = "social" src = "images/images/TwitterLogo.png"><br><a href ="http:\\www.twitter.com"/>Twitter</th>
				<th><img class = "social" src = "images/images/InstagramLogo.png"><br><a href ="http:\\www.instagram.com"/>Instagram</th>
				<th><img class = "social" src = "images/images/YouTubeLogo.png"><br><a href ="http:\\www.youtube.com"/>YouTube</th>
				<th><img class = "social" src = "images/images/GplusLogo.png"><br><a href ="http:\\www.google+.com"/>Google+</th>
				<th><img class = "social" src = "images/images/LinkedinLogo.png"><br><a href ="http:\\www.Linkedin.com"/>Linkedin</th>
				<th><img class = "social" src = "images/images/PinterestLogo.png"><br><a href ="http:\\www.Pinterest.com"/>Pinterest</th>
			</tr>
		</table>
		
		<p class = "footerdetails">The most trusted website in online travel and related services.<p> 
		
		<table class = "contactdetails" width = "80%">
			<tr>
				<th><img class ="contacts" src ="images/images/emailLogo.png"><br>AnytimeTravel@gmail.com</th>
				<th><img class ="contacts" src ="images/images/TelLogo.png"><br>+94115069829</th>
				<th><img class ="contacts" src ="images/images/addressLogo.png"><br>Sri Lanka Dahanayake Mw,<br>100 Independence Square,<br>Colombo 00700</th>
			</tr>
			
		</table>
		
		<h4 class ="copyright">Copyright @ 2019 AnytimeTravel, All Rights Reserved.</h4>
		</center>
	</div>
	</footer>
</body>



</html> 