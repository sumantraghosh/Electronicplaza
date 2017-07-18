<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <!-- bootstrap cdn -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	  </script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="/Electronicplaza">Home</a>
					</li>
					
					
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Electronicplaza/UserDetail"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      				<li><a href="/Electronicplaza/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				
      				
				</ul>
			</div>
			
	</nav>		
<div id="container">
<div class="table-responsive">
<table class="table table-bordered" >
<tr><td colspan="4" align="center">LIST OF AVAILABLE PRODUCTS</td></tr>
<tr bgcolor="pink">
<td>Image</td>
<td>Product Name</td>
<td>Description</td>
<td>Price</td>
</tr>

<c:forEach items="${prodlist}" var="product">
<tr>

<td>
<a href="/Electronicplaza/ProdDescription/${product.prodid}" class="thumbnail">
<img src="<c:url value="/assets/images/${product.prodid}.jpg"/>" height="150px" width="150px"/>
</a>
</td>


<td><h4>${product.prodname}</h4></td>
<td><h4>${product.proddesc}</h4></td>
<td><h4>${product.price}</h4></td>
</tr>
</c:forEach>
</table>
</div>
</div>
  
</body>
</html>