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
						<a href="/Electronicplaza/ViewAppliances">Appliances</a>
					</li>
					
				</ul>
					
				</ul>
			<ul class="nav navbar-nav navbar-right">
					<li><a href="/Electronicplaza/UserDetail"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      				<li><a href="/Electronicplaza/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				
				</ul>	
			</div>
			
	</nav>		
<div class="container">
<div class="table-responsive">

<table class="table table-bordered" >


<tr><td colspan="5" align="center"><h3>Product Description</h3></td></tr>
<tr>
<td colspan="5" align="center"><img src="<c:url value="/assets/images/${prodinfo.prodid}.jpg"/>" height="150px" width="150px"/></td>
</tr>


<tr bgcolor="pink">
<td>ProdId</td>
<td>ProdName</td>
<td>Supplier</td>
<td>ProdDesc</td>
<td>Price</td>
</tr>
<tr>
<td>${prodinfo.prodid}</td>
<td>${prodinfo.prodname}</td>
<td>${prodinfo.suppid}</td>
<td>${prodinfo.proddesc}</td>
<td>${prodinfo.price}</td>
</tr>
<tr>
<td colspan="5" align="center">

Quantity<input type="number" name="quantity" min="1" required />

<a href="<c:url value="/user/Cart"/>">Add</a>

</td>
</tr>
</table>
</div>
</div>
<c:if test="${flag}">
<center>
<font color="red" size="6">Quantity exceeds stock</font>
</center>
</c:if>
<c:if test="${flag1}">
<center>
<font color="red" size="6">This product already exists in the cart.<a href="/Electronicplaza/moveTocart">Move to Cart</a></font>
</center>
</c:if>
</body>
</html>