<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	  </script>

</head>
<body>
<form:form modelAttribute ="checkout">
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

<div class="container">
<div class="table-responsive">

<table class="table table-bordered" border="1">
<tr>
<td colspan="4" align="center"><h3>Order Confirmation</h3></td>
</tr>
<tr bgcolor="pink">
<td>Product Name</td>
<td>Quantity</td>
<td>Sub Total</td>
<td>Image</td>

</tr>
<c:forEach items="${checkout.cartList}" var="cartitem">
<tr>

<td>${cartitem.prodname}</td>
<td>${cartitem.quantity}</td>
<td>${cartitem.price*cartitem.quantity}</td>
<td><img src="<c:url value="/assets/images/${cartitem.prodid}.jpg"/>" height="100px" width="100px"/></td>

</tr>
</c:forEach>

 

<tr>

<td colspan="4" align="right"><b>Grand Total= ${checkout.grandtotal}</b>
</td>

</tr>
</table>

</div>
</div>
</form:form>
<!-- <form action="<c:url value="/updateCart/${grandtotal}" />"  method="post"> -->
<form method="post">
<div class="container">
<div class="table-responsive">

<table class="table table-bordered" border="1">

<tr bgcolor="pink">
<td colspan="4" align="center"> Payment Information</td>
</tr>
<tr>
<td>Payment Mode</td>
<td><input type="radio" name="pmode" value="CC" required />Credit Card</td>
<td><input type="radio" name="pmode" value="IB" required />Internet Banking</td>
<td><input type="radio" name="pmode" value="CD" required />Cash</td>

</tr>
<tr>
<td>Shipping Address</td><td><textarea name="shipaddr" cols="20" rows="5" required ></textarea></td>
</tr>
<tr>
<td colspan="4" align="center"><input type="submit"  value="payment" name="_eventId_submit" /></td>
</tr>



</table>
</div>
</div>
</form>
</body>
</html>