<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign up </title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="csslogin/signup.css">
<!--===============================================================================================-->



</head>
<body>
<div class="signup-form">
    <form action="insert" method="post"> 
    <img class = "logo" src="images/travel1.png" alt="TravelAnywhere" width = "100px" height = "100px" />
		<h2>Sign Up</h2>
		<p>Please fill in this form to create an account!</p>
		<hr>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span>
				<input type="text" class="form-control" name="name" placeholder="Name"  required="required" >
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-paper-plane"></i></span>
				<input type="email" class="form-control" name="email" placeholder="Email Address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="required">
			</div>
        </div>
         <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-paper-phone"></i></span>
				<input type="text" class="form-control" name="phone" placeholder="Contact Number" pattern = "[0-9]{10}"  required="required">
			</div>
        </div>
         <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-paper-username"></i></span>
				<input type="text" class="form-control" name="uid" placeholder="Username" required="required">
			</div>
        </div>
        
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock"></i></span>
				<input type="password" class="form-control" name="pass" placeholder="Password" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">
					<i class="fa fa-lock"></i>
					<i class="fa fa-check"></i>
				</span>
				<input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" required="required">
			</div>
        </div>
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <input type="submit" name="submit" class="btn btn-primary btn-lg" value="Sign Up">
        </div>
    </form>
	<div class="text-center">Already have an account? <a href="login.jsp">Login here</a></div>
</div>

</body>
</html>