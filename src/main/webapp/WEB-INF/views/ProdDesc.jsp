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
<div class="container">
<div class="table-responsive">

<table class="table table-bordered" border="1">


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
Quantity<input type="text" name="quantity" >
<input type="submit" class="btn btn-info" value="ADD TO CART">
</form>
</td>
</tr>

</table>

</div>
</div>
</body>
</html>