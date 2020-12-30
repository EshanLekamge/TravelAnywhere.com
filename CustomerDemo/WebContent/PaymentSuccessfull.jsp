<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <title>Payment Successful</title>
<head>
 <title>Payment Home</title>
<link media="all" rel="stylesheet" type ="text/css" href="Cssfile/sus.css ">
<link media="all" rel="stylesheet" type ="text/css" href="Cssfile/header css.css ">

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
	

<br>


       <div class="box">
            <div class = pyasuc>Payment Successful</div>
            <div class="container">
             <img src="images/mark.png" alt="Avatar" class="image">
            </div>
                <form class="login-form" action="log" method="post">
                    <h2>Thank You !</h2>
                        <div class ="rectangle"> 
                            <center><h4>Sri Lanka Dahanayake Mw,</h4></center>
                            <center><h4>100 Independence Square,</h4></center>
                            <center><h4>Colombo 7</h4></center>
                            
                    <div class = star>*********************************************************************************************<br>  </div>
    <div class = recipt>Customer ID   : xxxxx <br>
    Date and Time : <span id="datetime"></span>
                    <script>
                    var dt = new Date();
                    document.getElementById("datetime").innerHTML = dt.toLocaleString();
                    </script>
                   <br>
                   <br> <br>
                            <div class = recipt-in>Your Payment is Successful !</div><br><br>
                            Card Number : xxxxxxxxx <br>
                            Exp Date    : xxxxxxx <br>
                            Card Type   : xxxxxxx <br>
                            Amount :  <br><br></div>
                            
                        </div>       
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <center>This Receipt has been sent to Your Praveen@gmail.com  Please check your email</center><br>
        <br>
  
                            <center>Thank You !</center>
                            <br>
                </form>

        </div>
    
<br>
<br><br><br>
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
