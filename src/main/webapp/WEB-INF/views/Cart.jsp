 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    


<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <!-- bootstrap cdn -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	  </script>

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
					
      				<li><a href="/Electronicplaza/perform_logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>	
			</div>
			
	</nav>	
<c:if test="${!flag1}">	
<div class="container">
<div class="table-responsive">

<table class="table table-bordered" border="1">

<tr>
<td colspan="5" align="center"><h3>Shopping Cart</h3></td>
</tr>
<tr bgcolor="pink">
<td>Product Name</td>
<td>Quantity</td>
<td>Sub Total</td>
<td>Image</td>
<td>Operation</td>
</tr>
<c:forEach items="${cartitems}" var="cartitem">
<tr>
<form action="<c:url value="/updateCartItem/${cartitem.citemid}"/>" method="post">

<td>${cartitem.prodname}</td>
<td><input type="number" value="${cartitem.quantity}" name="quantity" min="1" required /></td>
<td>${cartitem.price*cartitem.quantity}</td>
<td><img src="<c:url value="/assets/images/${cartitem.prodid}.jpg"/>" height="100px" width="100px"/></td>
<td><input type="submit" class="btn btn-info" value="UPDATE">
<a href="<c:url value="/deleteCartItem/${cartitem.citemid}"/>">Delete</a>
</td>
</form>
</tr>
</c:forEach>
<tr>
<td colspan="5" align="center"><a href="/Electronicplaza/AllProducts">Continue Shopping</a>
<a href="<c:url value="/checkout"/>">Checkout</a></td>
</tr>

</table>

<c:if test="${flag}">
<center>
<font color="red" size="6">Quantity exceeds stock</font>
</center>
</c:if>
</div>
</div>
</c:if>
<c:if test="${flag1}">
<center>
<font color="red" size="10">Cart is Empty.<a href="/Electronicplaza/UserHome">Continue Shopping</a></font>
</center>
</c:if>
</body>
</html>