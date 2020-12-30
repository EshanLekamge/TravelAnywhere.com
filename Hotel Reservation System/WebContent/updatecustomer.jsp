<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Profile</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="csslogin/updateguest.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type ="text/css" href="csslogin/home-page.css" />
		 
		 
</head>
  <body>
    <hr>
		
		<img class = "logo" src="images/travel1.png" alt="TravelAnywhere" width = "100px" height = "100px" />
		<h1 class = "title"><center>TravelAnywhere</center></h1>
		<h3 class = "title2"><center>HOTELS, RESORTS, VILLAS & MORE</center></h3>
		
    <hr>

    <ul class = "mainmenu">
        <li><a href = "HotelReservationSystemHome.jsp">Home</a></li>
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
		<li><a href = "login.jsp">Login</a></li>
		<li><a href = "GuestInsert.jsp">Signup</a></li>
    </ul>


    <hr>
	</body>
</head>

<body>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
<div class="container">
	<form action="update" method="post" >
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                <div class="col-sm-6">
						<h2>Guest Profile</h2>
					</div>
				</div>
				</div>
				
				 <div class="col-25">
     			 <label >Customer ID</label>
  			    </div>
    			<div class="col-75">
    			  <input type="text" name="cusid" value="<%= id %>" readonly><br><br>
    			 </div> 
    			 
    			 
    			<div class="col-25">
     			 <label >Name </label>
  			    </div>
    			<div class="col-75">
    			  <input type="text" name="name" value="<%= name %>"><br><br>
    			</div>  
    			
    			
    			<div class="col-25">
     			 <label>Email</label>
  			    </div>
    			<div class="col-75">
    			  <input type="text" name="email" value="<%= email %>"><br><br>
    			</div>  
    			
    			
    			<div class="col-25">
     			 <label >Phone number</label>
  			    </div>
    			<div class="col-75">
    			  <input type="text" name="phone" value="<%= phone %>"><br><br>
    			</div>  
    			
    			  
    			<div class="col-25">
     			 <label>User name</label>
  			    </div>
    			<div class="col-75">
    			  <input type="text" name="uname" value="<%= username %>"><br><br>
    			</div>  
    			
    			  
    			<div class="col-25">
     			 <label>Password</label>
  			    </div>
    			<div class="col-75">
    			  <input type="password" name="pass" value="<%= password %>"><br><br><br>
    			</div>
   
    			<br>
    			<br>
 
   
		<input type="submit" name="submit" class="btn btn-success" data-toggle="modal" value="Update Account Details"><br>
	</div>
	
	
	</form>


</div>

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
	
