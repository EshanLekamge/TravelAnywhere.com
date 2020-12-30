<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

		 <title>Delete payment</title>
       
         <link  rel="stylesheet" type ="text/css" href="Cssfile/header css.css ">
          <link  rel="stylesheet" type ="text/css" href="Cssfile/insert.css">
       

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



	<div class=mainfont>WELCOME TO </div>
</div>
	<div class="box1">

		<form class="login-form1" action="delete" method="post">
			<h1>Delete Payment</h1>
			

			<!-- select Payment option -->
			
			<span class="card-details__heading">Card Type</span>

			<div class="card-details__cards" data-card-types>
				<div class="card-details__cards-item">
					<input class="card-details__card-input" type="radio"
						name="cardType" id="visa" data-card-type="visa" checked> <label
						class="card-details__card-label" for="visa">Visa</label> <img
						class="card-details__cards-image"
						src="https://svgshare.com/i/7h2.svg" alt="Visa Card"
						aria-hidden="true">
				</div>

				<div class="card-details__cards-item">
					<input class="card-details__card-input" type="radio"
						name="cardType" id="mastercard" data-card-type="mastercard">
					<label class="card-details__card-label" for="mastercard">MasterCard</label>
					<img class="card-details__cards-image"
						src="https://svgshare.com/i/7fu.svg" alt="MasterCard"
						aria-hidden="true">
				</div>

				<div class="card-details__cards-item">
					<input class="card-details__card-input" type="radio"
						name="cardType" id="discover" data-card-type="discover"> <label
						class="card-details__card-label" for="discover">Discover</label> <img
						class="card-details__cards-image"
						src="https://svgshare.com/i/7hP.svg" alt="Discover Card"
						aria-hidden="true">
				</div>

				<div  class="card-details__cards-item">
					<input class="card-details__card-input" type="radio"
						name="cardType" id="express" data-card-type="express"> <label
						class="card-details__card-label" for="express">American
						Express</label> <img class="card-details__cards-image"
						src="https://svgshare.com/i/7gD.svg" alt="Amercican Express Card"
						aria-hidden="true">
				</div>
				</div>


	<% 
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String cardnumber = request.getParameter("cardnumber");
		String expiredate = request.getParameter("expiredate");
		String securitycode = request.getParameter("securitycode");
		String amount = request.getParameter("amount");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		%>
	




				Customer ID 	<input type="text" name="cusid" value="<%=id%>" readonly><br>
				Name 			<input type="text" name="name" value="<%=name%>"readonly><br>
				Email 			<input type="text" name="email" value="<%=email%>"readonly><br>
				Card number 	<input type="text" name="cardnumber" value="<%=cardnumber%>"readonly><br>
				Expire Date 	<input type="date" name="expiredate" value="<%=expiredate%>"readonly><br>
				Security Code 	<input type="text" name="securitycode" value="<%=securitycode%>"readonly><br>
				Amount 			<input type="text" name="amount" value="<%=amount%>"readonly><br>
				User name 		<input type="text" name="uname" value="<%=userName%>"readonly><br>
				
				
				<input type="submit" name="submit" value="Delete Account Details"><br>
				
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