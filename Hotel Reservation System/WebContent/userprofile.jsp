<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<link rel="stylesheet" type="text/css" href="csslogin/userprofile.css">
<!--===============================================================================================-->
	
<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
</script>
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

<br>
<br>
<br>
<br>
<br>
	
<div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Guest Profile</h2>
					</div>
				
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                  
						<th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Actions</th>
                 
                    </tr>
                </thead>
                <tbody>
                 </tbody>
                 
	
                 <tr>
					   <c:forEach var="cus" items="${cusDetails}">
	
					<c:set var="id" value="${cus.id}"/>
					<c:set var="name" value="${cus.name}"/>
					<c:set var="email" value="${cus.email}"/>
					<c:set var="phone" value="${cus.phone}"/>
					<c:set var="username" value="${cus.username}"/>
					<c:set var="password" value="${cus.password}"/>

                       
                        <td>${cus.id}</td>
                        <td>${cus.name}</td>
                        <td>${cus.email}</td>
                        <td>${cus.phone}</td>
                        <td>${cus.username}</td>
                        <td>${cus.password}</td>
                        
					</c:forEach>	
                        <td>
                            <a href="#updatecustomer.jsp" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
            </table>
            <br>
            <br>


            <div class="table-title">
            
                <div class="row">
		<c:url value="updatecustomer.jsp" var="custupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>	
			<a href="${custupdate}">
	<input type="button" name="update" value="Update Account Details" class="btn btn-success" data-toggle="modal"> 
	</a>	
	
	
	
	
	
	<c:url value="deleteGuest.jsp" var="custdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
	<a href="${ custdelete}">
	<input type="button" name="delete" value="Delete Account" class="btn btn-danger" data-toggle="modal">
	</a>
	
				
	<input type="button" name="logout" value="Logout" class="btn btn-success" data-toggle="modal" onclick="location.href='login.jsp'">	
			</div>
	</div>
					
</div>
	</div>
					
			
	
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Delete Guest Details</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<p>Are you sure you want to delete this Account?</p>
						
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
							
				<c:url value="deleteGuest.jsp" var="custdelete">
					<c:param name="id" value="${id}"/>
					<c:param name="name" value="${name}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="phone" value="${phone}"/>
					<c:param name="uname" value="${username}"/>
					<c:param name="pass" value="${password}"/>
				</c:url>
						<a href="${ custdelete}">
						<input type="button" name= "delete" class="btn btn-danger" value="Delete Account">
						</a>
					</div>
				</form>
			</div>
		</div>
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
