<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	  </script>

</head>
<body>
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
					
      				<li><a href="/Electronicplaza/login"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>	
			</div>
			
	</nav>		
</body>
</html>