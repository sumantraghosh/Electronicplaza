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
<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="#">Home</a>
					</li>
					<li>
						<a href="Product">Manage Products</a>
					</li>
					<li>
						<a href="Category">Manage Categories</a>
					</li>
					<li>
						<a href="Supplier">Manage Suppliers</a>
					</li>
					
				</ul>
			<ul class="nav navbar-nav navbar-right">
					
      				<li><a href="/Electronicplaza/perform_logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
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
			      <img src="assets/images/firstimage.jpg"  style="width:700px;height:300px;" >
			    </div>

			    <div class="item">
			      <img src="assets/images/secondimage.jpg" style="width:700px;height:300px;">
			    </div>

			    <div class="item">
			      <img src="assets/images/thirdimage.jpg" style="width:700px;height:300px;">
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
	<div class="container-fluid">
  
  <div class="row">
    <div class="col-sm-4" >
      
      <img src="assets/images/fourthimage.jpg">
    </div>
    <div class="col-sm-4" >
      
      <img src="assets/images/fifthimage.jpg">
    </div>
    <div class="col-sm-4" >
      
      <img src="assets/images/sixthimage.jpg">
    </div>
  </div>
</div>

	
	</body>
    <footer>  
		<div align="center">	
			<p>Shopping Cart</p>  
			<p>   
			<address> ShoppingCart, plot no. 6, near Quest Mall,Ballygunje, kolkata Pin no. 700047   
			</address>   
			
			<p>For Information Contact :   
			<a href="sumantracescok@gmail.com">sumantracescok@gmail.com</a>.  
			</p>
		 </div>
	 
	</footer>  


</html>