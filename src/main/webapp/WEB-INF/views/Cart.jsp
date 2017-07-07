<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>
<table cellspacing="3" align="center">
<tr>
<td colspan="5" ><center><h3>Shopping Cart</h3></center></td>
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
<td><input type="text" value="${cartitem.quantity}" name="quantity"></td>
<td>${cartitem.price*cartitem.quantity}</td>
<td><img src="<c:url value="/assets/images/${cartitem.prodid}.jpg"/>"/></td>
<td><input type="submit" value="UPDATE">
<a href="<c:url value="/deleteCartItem/${cartitem.citemid}"/>">Delete</a>
</td>
</form>
</tr>
</c:forEach>
</table>

</body>
</html>