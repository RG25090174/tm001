<%@page import="com.thrive.more.entities.User"%>
<%@page import="com.thrive.more.dao.UserDao"%>
<%@page import="com.thrive.more.helpers.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register or Sign Up - Thrive More</title>
<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
 
<style>

.control{
	border-bottom:2px solid rgb(73, 137, 171);
	border-top:none;
	border-left:none;
	border-right:none;
}


</style>

</head>
<body>

<!-- NavBar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-dark ">
  <a class="navbar-brand text-white" href="index.jsp">Thrive More</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link text-white" href="about.jsp"><span class="	fa fa-sticky-note-o"></span> About </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="privacy-policy.jsp"><span class="	fa fa-reorder"></span> Privacy Policy </a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Help
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="about.jsp">About Section</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="disscussProblems.jsp">Discuss Problems</a>
          <a class="dropdown-item" href="contactUs.jsp">Contact Us</a>
        </div>
      </li>
      
      <li class="nav-item">
        <a class="nav-link text-white" href="register.jsp">SignUp</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="login.jsp"><span class="	fa fa-sign-in"></span> SignIn</a>
      </li>
    </ul>
    
  </div>
</nav> 
	 
	 
	 
	<!-- Main Content -->
	<div class="container pt-4">	 
	<div class="card" style="box-shadow:2px 4px 5px rgb(97, 102, 102);">
  <h5 class="card-header text-center text-white bg-dark">SignUp here</h5>
  <div class="card-body">
    <div class="container p-3 my-2 " >
		<form id="reg-form" action="RegisterServlet" method="post">
  			<div class="form-row">
    			<div class="form-group col-md-0.2">
      				<span class="	fa fa-user-circle fa-2x"></span> 
    			</div>
    		<div class="form-group col-md-4">
      			<input name="fname" required type="text" class="form-control control" id="inputName4" placeholder="First Name">
        	</div>
        	<div class="form-group col-md-2">
      			
        	</div>
        	<div class="form-group ml-4">
  					
    				
  				</div>
    		<div class="form-group col-md-4">
      			<input name="lname" type="text" class="form-control control" id="inputName4" placeholder="Last name">
    		</div>
  			</div>
  			<div class="form-row pt-4">
  				<div class="form-group col-md-0.2">
  					<span class="	fa fa-envelope-o fa-2x"  ></span>
    				
  				</div>
  				<div class="form-group col-md-4">
    				<input name="email" required type="email" class="form-control control" id="inputEmail4" placeholder="Email">
  				</div>
  				<div class="form-group col-md-2">
    				
  				</div>
  				<div class="form-group col-md-0.2">
  					<span class="	fa fa-lock fa-2x"  ></span>
    				
  				</div>
  				<div class="form-group col-md-4">
    				<input name="password" required type="password" class="form-control control" id="inputPassword4" placeholder="Password">
  				</div>
  			</div>
  			<div class="form-row pt-4">
  			<div class="form-group col-md-1">
    				<label><b>Gender : </b></label>
  				</div>
    			<div class="form-group col-md-5">
      				<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
  						<label class="form-check-label" for="inlineRadio1">Male</label>
					</div>
					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
  						<label class="form-check-label" for="inlineRadio2">Female</label>
					</div>
					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="trans">
  						<label class="form-check-label" for="inlineRadio3">Trans</label>
					</div>
    			</div>
    			
    			<div class="form-group ml-5 ">
    				
  				</div>
  				<div class="form-group ">
  					<span class="	fa fa-lock fa-2x" ></span>
  				</div>
  				<div class="form-group col-md-4">
    				<input name="confirmPassword" required type="password" class="form-control control" id="inputPassword4" placeholder="Confirm Password">
  				</div>
  			</div>
  		<div class="form-group pt-4">
    		<div class="form-check">
      			<input name="check" class="form-check-input" type="checkbox" id="gridCheck">
      			<label class="form-check-label" for="gridCheck">
        			<a href="" style="color:rgb(73, 137, 171);" data-toggle="modal" data-target="#exampleModalCenter"><b>Accept Terms and Conditions</b></a>
      			</label>
      			

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header text-center text-white bg-dark ">
        <h5 class="modal-title" id="exampleModalLongTitle">Terms and Conditioins</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary text-white bg-dark" data-dismiss="modal">Ok</button>
      </div>
    </div>
  </div>
</div>
    		</div>
  		</div>
  			<div class="form-row pt-4">
  				<div class="form-group col-md-10">
  				
  				</div>
  				<div class="form-group col-md-1">
  					<div class="text-center" id="loader" style="display:none;">
  						<span class="fa fa-refresh fa-spin fa-2x"></span>
  					</div>
  					<button id="submit-btn" type="submit" class="btn text-white " style="background:rgb(73, 137, 171);">Sign up</button>
				</div>
			</div>
		</form>
  	</div>
    
  </div>
	</div>
</div>

 <!-- JavaScript -->
	 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script>
	$(document).ready(function(){
		$("#reg-form").on('submit', function(event){
			event.preventDefault();
			let form = new FormData(this);
			
			$("#submit-btn").hide();
			$("#loader").show();
			
			$.ajax({
				url : "RegisterServlet",
				type : 'post',
				data : form,
				success: function (data, textStatus, jqXHR){
					$("#submit-btn").show();
					$("#loader").hide();
					if(data.trim() === 'done'){
						swal("Successfully Registered!", "Welcome to Thrive More", "success")
						.then((value)=>{
							window.location="profile.jsp";
						});
					}else{
						swal(data);
					}
				},
				error: function (jqXHR, textStatus, errorThrown){
					$("#submit-btn").show();
					$("#loader").hide();
					swal("Something went wrong!", "These are some possible errors : \n 1. Terms and Conditions not accepted.\n 2. Email Id had already taken (try to change email).\n 3. Network Problem.", "error");

				},
				processData: false,
				contentType: false
			});
		});
	});
</script>
	
</body>
</html>
