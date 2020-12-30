<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="csslogin/util.css">
	<link rel="stylesheet" type="text/css" href="csslogin/main.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type ="text/css" href="csslogin/home-page.css" />
		 
		 
</head>
  <body>
    <hr>
		
		
		<h1 class = "title"><center>TravelAnywhere</center></h1>
		<h3 class = "title2"><center>HOTELS, RESORTS, VILLAS & MORE</center></h3>
		
    <hr>

    <ul class = "mainmenu">
        <li><a href = "#">Home</a></li>
        <li><a href = "AboutUs.php">Hotels</a></li>
		<li><a href = "contactus.php">Villas</a></li>
		<li><a href = "Smart Systems Product-Page.php">Resorts</a></li>
        <li><a href = "Smart Systems Systems-Page.html">Your Bookings</a></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li><a href = "login.jsp">Login</a></li>
		<li><a href = "GuestInsert.jsp">Signup</a></li>
    </ul>


    <hr>
	</body>
</head>
<style>
.modal-body{
	font-size=10px;
	font-color=white;
}
</style>

<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/h7.jpg);">
					<div class="login100-form-title-1">
						Welcome!!
						<br>
					</div>
					<div class="modal-body">					
						<p class="text-warning">You have successfully created an account!</p>
						<p class="text-warning"><small>You can now login to reserve rooms.</small></p>
					</div>
				</div>
				

				<form class="login100-form validate-form" method = "POST" action="log">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="uname" placeholder="Enter username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="psw" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="#" class="txt1">
								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
<footer>
	<div class = "bottom">
		<center>
		<table class = "socialmedia" width = "80%">
			<tr>
				<th><img class = "social" src = "images/FacebookLogo.png"><br><a href ="http:\\www.facebook.com"/>Facebook</th>
				<th><img class = "social" src = "images/TwitterLogo.png"><br><a href ="http:\\www.twitter.com"/>Twitter</th>
				<th><img class = "social" src = "images/InstagramLogo.png"><br><a href ="http:\\www.instagram.com"/>Instagram</th>
				<th><img class = "social" src = "images/YouTubeLogo.png"><br><a href ="http:\\www.youtube.com"/>YouTube</th>
				<th><img class = "social" src = "images/GplusLogo.png"><br><a href ="http:\\www.google+.com"/>Google+</th>
				<th><img class = "social" src = "images/LinkedinLogo.png"><br><a href ="http:\\www.Linkedin.com"/>Linkedin</th>
				<th><img class = "social" src = "images/PinterestLogo.png"><br><a href ="http:\\www.Pinterest.com"/>Pinterest</th>
			</tr>
		</table>
		
		<p class = "footerdetails">The most trusted website in online travel and related services.<p> 
		
		<table class = "contactdetails" width = "80%">
			<tr>
				<th><img class ="contacts" src ="images/emailLogo.png"><br>AnytimeTravel@gmail.com</th>
				<th><img class ="contacts" src ="images/TelLogo.png"><br>+94115069829</th>
				<th><img class ="contacts" src ="images/addressLogo.png"><br>Sri Lanka Dahanayake Mw,<br>100 Independence Square,<br>Colombo 00700</th>
			</tr>
			
		</table>
		
		<h4 class ="copyright">Copyright @ 2019 AnytimeTravel, All Rights Reserved.</h4>
		</center>
	</div>
	</footer>	
	
</body>
</html>