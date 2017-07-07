<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<html>
	<head>
	  <title>Electronic Plaza Project</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	  

          <link rel="stylesheet" type="text/css" href="index.css">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <!-- stylesheet link -->
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <!-- bootstrap cdn -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	  </script>
	</head>
	<style type="text/css">
		.carousel-inner>.item>img{
			margin: 0 auto;
		}
	</style>
	<body>
		<div>		
			<h1 align="center">Welcome to Electronic Plaza</h1>
		<!-- designing navbar -->

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">FZone</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="#">Home</a>
					</li>
					<li>
						<a href="#">About Us</a>
					</li>
					<li>
						<a href="#">Contact Us</a>
					</li>
					<li>
						<a href="AllProducts">Appliances</a>
					</li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      				<li><a href="/Electronicplaza/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
			
	</nav>		
			<!-- carousel -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel" >
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			    <li data-target="#myCarousel" data-slide-to="1"></li>
			    <li data-target="#myCarousel" data-slide-to="2"></li>
			  </ol>

			  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
			    <div class="item active">
			      <img src="assets/images/flatgreen.jpg"  style="width:700px;height:300px;" >
			    </div>

			    <div class="item">
			      <img src="assets/images/flatorange.jpg" style="width:700px;height:300px;">
			    </div>

			    <div class="item">
			      <img src="assets/images/vista.jpg" style="width:700px;height:300px;">
			    </div>
			  </div>

			  <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#myCarousel" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>		
			<!-- panels -->	
		<!--	<div class="container">
				<h2>Panel Heading</h2>
				<div class="panel panel-default">
					 <div class="panel-heading">Panel Heading</div>
    				 <div class="panel-body">Panel Content</div>
				</div>
				<div class="panel panel-default">
					 <div class="panel-heading">Panel Heading</div>
    				 <div class="panel-body">Panel Content</div>
				</div>
			</div>	-->
	
	</div>
	
	</body>
    <footer>  
		<div>	
			<p>Shopping Cart</p>  
			<p>   
			<address> ShoppingCart, plot no. 6, near Quest Mall,Ballygunje, kolkata Pin no. 700047   
			</address>   
			
			<p>For Information Contact :   
			<a href="suman@gmail.com">sumank@gmail.com</a>.  
			</p>
		 </div>
	 
	</footer>  


</html>