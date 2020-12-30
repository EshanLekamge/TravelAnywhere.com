<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<!--Include css file-->
		<?php
		 include_once 'dbconnectpage.php';
		?>
		 <title>Payment Home</title>
         <link rel="stylesheet" type ="text/css" href="Cssfile/2.css">
         <link rel="stylesheet" type ="text/css" href="header css.css">

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
	
	

    
	<div class=mainfont> WELCOME </div>
	<!--login page-->
	<div class="box">
		<form class="login-form" action="log" method="post">
			<h2>
				Check Your Payment Details</b>
			</h2>
			

			User Name <input type="text" name="uid" placeholder="Enter User Name"><br>
			<br> Password <input type="password" name="pass" placeholder="Enter Password"><br>
				
				 <input type="submit" name="submit" vlaue="Login">
				
		</form>
		</form>
		<div class="paymenttext">
			<h4>If You Don't have a Payment Account</h4>
			<h5>Register Now</h5>
		</div>
	</div>


	<center>
		<a href="customerinsert.jsp" class="btn" role="button">
			Create Account</a>
	</center>
</div>


<!--Footer code-->
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
