<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>TravelAnywhere</title>

<style>

body
{
	background-image : url("images/papers.co-si87-light-green-blue-sky-gradation-blur-35-3840x2160-4k-wallpaper.jpg");
	background-repeat : no-repeat;
	background-attachment : fixed;
	background-position : center;
	color : black;
	font-family : Century Gothic
	
	
}
.DisplayBackground
	{
		background-color : #DCDCDC;
		padding-left : 10px;
		padding-bottom : 10px;
		display : block;
		margin-left : auto;
		margin-right : auto;
		
		background-color : rgba(255,255,255,0.8);
	}

a
{
	text-decoration : none;
	color :  #4d4d4d;
}
	

ul.mainmenu
	{
	 background-color : #e6ffcc;
	 overflow : hidden;
	 list-style-type : none;
	
	}

li 
	{float : left;
	 color : white;
	 display : block;
	 padding : 14px 16px;
	 text-decoration : none;
	 font-family : Century Gothic;
	 font-size : 14px;
	 font-weight: bold;

	}
li:hover
	{background-color : #696969;
	 font-size : 20px;
	}
	
.mainPageLinks
	{
		background-color : 	#FFEBCD;
		background-repeat : no-repeat;
		background-attachment : fixed;
		background-position : center;
		padding : 10px;
		border-style : double;
		border-width : 4px;
		border-color : #FFEBCD;
		margin-top : 30px;
		
	}

.destinations
	{
		
		margin-top : 60px;
		font-family : Arial;
	 
	}
.informations
	{
		margin-top : 60px;
		font-family : Arial;
		background-color : rgba(166,166,166,0.8);
		 height: 200px;
	}

h2
	{
	 background-color : #333;
	 overflow : hidden;
	 color : white;
	 display : block;
	 text-decoration : none;
	}

h3
	{
	 color : white;
	 display : block;
	 text-decoration : none;
	}
.title
	{
		font-family : Bahnschrift SemiCondensed;
		color : white;
		font-size : 50px;
		text-shadow: 2px 2px black;
		
	}
	
.title2
	{
		font-family : Agency FB;
		color : white;
		font-size : 30px;
		letter-spacing : 4px;
		text-shadow: 2px 2px black;
	}

.logo
	{
		display : block;
	}

.social
	{
		width : 60px;
		height : 60px;
		margin-top : 20px;
		
		
	}
	
.contacts
	{
		width : 40px;
		height : 40px;
		
		
	}

.bottom
	{
		background-color : rgba(0,0,0,0.8);
		margin-top : 60px;
		height : 350px;
		
	}
.copyright
	{
		color : Tomato;
		size : 25px;
		font-family : Arial;

		
	}
.socialmedia
	{
		color : white;
		text-shadow : 1px 1px black;
		
	}
.contactdetails
	{
		color : white;
		text-shadow : 1px 1px black;
	}
.footerdetails
	{
		color : Tomato;
		size : 15px;
		font-family : Arial;
	}
.slider{
	
	background-color : rgba(0,0,0,0.8);
	height:600px;
	width:100%;
	background:black;
}

.mySlidesb
{
	width:100%;
	height:500px;
	display:none;
}

input[type=text] 
{
	margin-top: 20px;
  width: 600px;
  height: 40px;
  border-radius: 25px;
   background-color: #E0FFFF;
}
input[type=submit] 
{
	margin-top: 20px;
  background-color: #87CEFA;
  width: 100px;
  height: 45px;
  border-radius: 25px;
}	

</style>		 
		 
    </head>
    <body>
    <hr>
		
		<img class = "logo" src="images/travel1.png" alt="TravelAnywhere" width = "100px" height = "100px" />
		<h1 class = "title"><center>TravelAnywhere</center></h1>
		<h3 class = "title2"><center>HOTELS, RESORTS, VILLAS & MORE</center></h3>
		
    <hr>

    <ul class = "mainmenu">
        <li><a href = "#">Home</a></li>
        <li><a href = "yourBookings.jsp">Your Bookings</a></li>
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
	<center>
	<form action = "hotelDet" method = "post">
		
		<input type = "text" name = "SearchBar" width = "800px" height = "200px" placeholder = "Enter your destination">
		<input type = "submit" name = "SearchButton" value = "Search Now">
	</form>
	</center>
</br>
	
</br>

	
	
    <div class = "destinations">
        <table background = "images/704513.jpg" alt="destinations" width = "100%" height = "400">
            <tr>
				<center><h3 class = "locations" color = "black">Most popular destinations</h3></center>
			</tr>
			<tr>
                <td><center><img src = "images/colombo.jpg" width = "150" height = "150" class = "destinations" alt="colombo"/><h3>Colombo</h3></center></td>
                <td><center><img src = "images/Negombo.jpg" width = "150" height = "150" class = "destinations" alt="negombo"/><h3>Negombo</h3></center></td>
                <td><center><img src = "images/Kandy.jpg" width = "150" height = "150" class = "destinations" alt="kandy"/><h3>Kandy</h3></center></td>
                <td><center><img src = "images/Nuwara-Eliya.jpg" width = "150" height = "150" class = "destinations" alt="nuwara eliya"/><h3>Nuwara Eliya</h3></center></td>
				<td><center><img src = "images/Mirissa.jpg" width = "150" height = "150" class = "destinations" alt="mirissa"/><h3>Mirissa</h3></center></td>
				<td><center><img src = "images/Ella.jpg" width = "150" height = "150" class = "destinations" alt="ella"/><h3>Ella</h3></center></td>
				<td><center><img src = "images/Sigiriya.jpg" width = "150" height = "150" class = "destinations" alt="sigiriya"/><h3>Sigirya</h3></center></td>
				<td><center><img src = "images/unawatuna.jpg" width = "150" height = "150" class = "destinations" alt="unawatuna"/><h3>Unawatuna</h3></center></td>
            </tr>
        </table>
    </div>
	<div class = "informations">
        <table alt="destinations" width = "1000px" height = "200px">
			<tr>
                <td><center><h3><a href = "aboutus.jsp">About us</h3></center></td>
                <td><center><h3><a href = "contact.jsp">Contact us</h3></center></td>
                <td><center><h3>Destinations</h3></center></td>
                <td><center><h3>Help</h3></center></td>
            </tr>
        </table>
    </div>
	</body>

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
				<th><img class ="contacts" src ="images/emailLogo.png"><br>TravelAnywhere@gmail.com</th>
				<th><img class ="contacts" src ="images/TelLogo.png"><br>+94115069829</th>
				<th><img class ="contacts" src ="images/addressLogo.png"><br>Sri Lanka Dahanayake Mw,<br>100 Independence Square,<br>Colombo 00700</th>
			</tr>
			
		</table>
		
		<h4 class ="copyright">Copyright @ 2020 TravelAnywhere, All Rights Reserved.</h4>
		</center>
	</div>
	</footer>
</html>