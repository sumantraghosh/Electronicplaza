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
<form action="/Electronicplaza/addToCart/${prodinfo.prodid}" method="get">
Quantity<input type="text" name="quantity" required />
<input type="submit" class="btn btn-info" value="ADD TO CART" >
</form>
</td>
</tr>

</table>
<c:if test="${flag}">
Quantity exceeds stock
</c:if>
</div>
</div>
</body>
</html>