<%@page import="com.thrive.more.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	User user = (User)session.getAttribute("currentUser");
    	if(user == null){
    		response.sendRedirect("login.jsp");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome - <%= user.getFname() %> <%= user.getLname() %> to your Thrive More account </title>

<!-- CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <style>
	li{
            cursor: pointer;
			
        }

</style>
  
</head>
<body>

<!-- NavBar -->

<nav class="navbar navbar-expand-lg navbar-light bg-dark ">
  <a class="navbar-brand text-white" data-toggle="tooltip" data-placement="bottom" title="Home" href="profile.jsp"><span class="fa fa-home"></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse " id="navbarSupportedContent">
  <form class="form-inline ml-5 ">
      <input class="form-control  my-sm-0 " style=" width:280px; border-radius:150px 0px 0px 150px; " type="search" placeholder="Find Friends" aria-label="Search">
      <button class="btn  my-2 my-sm-0 text-white" type="submit" style="background:rgb(73, 137, 171); border-radius:0px 50px 50px 0px;"><span class="fa fa-search"></span></button>
    </form>
    <ul class="navbar-nav mx-auto">
    	<li class="nav-item active">
    	<a class="nav-link text-white" href="dashboard.jsp"><img src="img/<%= user.getProfile() %>" width="25px" height="25px" style="border-radius:50%;"> <%= user.getFname() %> <%= user.getLname() %></a>
    	</li>
    	<li class="nav-item active ml-5" >
    	<a class="nav-link text-white" data-toggle="modal" data-target="#ThrevensModal"> <strong class="text-muted p-1 border" style="border-radius:40px; background:white;"><%= user.getThrevens() %></strong> Threvens</a>
    	</li>
    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active ">
        <a class="nav-link text-white " href="#"><span class="fa fa-bar-chart-o"></span> Apex </a>
      </li>
      <li class="nav-item ml-2">
        <a class="nav-link text-white" data-toggle="modal" data-target="#notificationModal"><span class="fa fa-bell "></span> <sup class="text-center" style="width:15px; height:15px; background:red; color:white;">3</sup></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link text-white" href="#"  data-toggle="modal" data-target="#notificationModal"><span class="fa fa-comment"> <sup class="text-center" style="width:15px; height:15px; background:red; color:white;">4</sup></a>
      </li>
      <li class="nav-item mr-5">
      	<div class="dropdown">
  <button class="btn btn-secondary bg-dark" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="fa fa-ellipsis-v"></span>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  	<a class="dropdown-item"  href="dashboard.jsp"><img src="img/<%= user.getProfile() %>" width="25px" height="25px" style="border-radius:50%;">  <%= user.getFname() %> <%= user.getLname() %></a>
  	<small class="text-muted p-3"><%= user.getEmail() %></small>
  	<div class="dropdown-divider m-3"></div>
    <a class="dropdown-item" href="#">Prominent Posts</a>
    <a class="dropdown-item" href="#">Despise Posts</a>
    <a class="dropdown-item" href="#">New Posts</a>
    <a class="dropdown-item" href="#">Upload Post</a>
    <div class="dropdown-divider m-3"></div>
    <a class="dropdown-item" href="#">Apex</a>
    <a class="dropdown-item" href="#">About</a>
    <a class="dropdown-item" href="#">Discuss</a>
    <a class="dropdown-item" href="#">Settings</a>
    <a class="dropdown-item" href="#">Privacy Policy</a>
    <a class="dropdown-item" href="#">Contact Us</a>
    <div class="dropdown-divider m-3"></div>
    <a class="dropdown-item" href="LogoutServlet">LogOut</a>
  </div>
</div>
      </li>
    </ul>
    <form action="LogoutServlet" method="get">
    	<button class="btn btn-sm ml-5 text-white" style="background:rgb(97, 102, 102);" ><span class="fa fa-sign-out"></span> Sign Out</button>
    </form>
    
    
  
  </div>
</nav>
<!-- End Of NavBar -->


<!-- Notification Modal -->
<div class="modal fade" id="notificationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<!-- Message Modal -->
<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- Threvens Modal -->
<div class="modal fade" id="ThrevensModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<div class="container-fluid">
	<div class="row pt-4">
		<div class="col-3" >
			<ul class="list-group">
  				<li class="list-group-item active p-2">Prominent Posts</li>
  				<li class="list-group-item p-2">Despise Posts</li>
  				<li class="list-group-item p-2">New Posts</li>
  				<li class="list-group-item p-2">Find Friends</li>
  				<li class="list-group-item p-2">Notifications</li>
  				<li class="list-group-item p-2">Messages</li>
  				<li class="list-group-item p-2">Apex</li>
  				<li class="list-group-item p-2">About</li>
  				<li class="list-group-item p-2">Discuss</li>
  				<li class="list-group-item p-2">Settings</li>
  				<li class="list-group-item p-2">Privacy Policy</li>
  				<li class="list-group-item p-2">Contact Us</li>
			</ul>
		</div>
		
		<div class="col-6">
			<div class="card" style=" box-shadow:4px 5px 5px  rgb(97, 102, 102);" >
  				
  				<div class="card-body">
  				<div class="container">
  				<div class="row">
 				<div class="col-2 ">
    				<img src="img/<%= user.getProfile() %>" width="60px" height="50px"> 
  				</div>
  				<div class="col-8 p-2  border" data-toggle="modal" data-target="#postModal" style="height:45px;border-radius:20px; background:rgb(245, 246, 247);" >
    				<p class=" text-muted"  >What's on your mind, <%= user.getFname() %>?</p>
  				</div>
  				</div>
  				</div>
  				</div>
  				
  				<div class="card-footer m-2"  >
    				<div class="container">
    					<div class="row">
    						<div class="col-md-2 p-1  border text-center " id="images" data-toggle="modal" data-target="#postModal">
    							
    							<a ><span class="fa fa-file-image-o "></span> Images</a>
    							
    						</div>
    						<div class="col-md-2"></div>
    						<div class="col-md-2  p-1 border text-center " id="videos" data-toggle="modal" data-target="#postModal">
    							
    							<a ><span class="fa fa-file-video-o "></span> Videos</a>
    							
    						</div>
    						<div class="col-md-2"></div>
    						<div class="col-md-2 p-1 border text-center " id="feelings" data-toggle="modal" data-target="#postModal">
    							
    								<a><span class="fa fa-smile-o"></span> Feelings</a>
    							
    						</div>
    					</div>
    				</div>
  				</div>
			</div>
			
		</div>
		
	</div>
</div>

<!-- Post Modal -->
<div class="modal fade" id="postModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    	<div class="container">
      <div class="modal-header "> 
      <div class="container">
      	<div class="row ">
      		<div class="col-10 p-2 text-center">
        <h5>Create Post</h5>
        	</div>
        	<div class="col-2 mx-auto"> 
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        </div>
        </div>
      </div>
      <div class="modal-body">
        <div class="contaier">
        	<div class="row">
        		<div class="col-1">
        			<img src="img/<%= user.getProfile() %>" width="30px" height="30px"/>  
        		</div>
        		<div class="col-6 ">
        			<h6><%= user.getFname() %> <%= user.getLname() %></h6>
        		</div>
        	</div>
        	<div class="row pt-2">
        		<div class="col-12 p-2 ">
        			
        			<input type="text" class="form-control" placeholder="What's on your mind, <%= user.getFname() %>?" style="border:none;"/>
        		</div>
        	</div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
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
  
  
  <script >
  $(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	});
  </script>
</body>
</html>
