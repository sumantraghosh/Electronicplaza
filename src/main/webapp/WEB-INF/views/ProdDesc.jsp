<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<TABLE>
<tr><td colspan="2">Product Description</td></tr>
<tr rowspan="20">
<td colspan="2"><img src="<c:url value="/assets/images/${prodinfo.prodid}.jpg"/>"/></td>
</tr>
<tr>
<td>ProdId</td><td>${prodinfo.prodid}</td>
</tr>

<tr>
<td>ProdName</td><td>${prodinfo.prodname}</td>
</tr>
<tr>
<td>Supplier</td><td>${prodinfo.suppid}</td>
</tr>
<tr>
<td>ProdDesc</td><td>${prodinfo.proddesc}</td>
</tr>
<tr>
<td>Price</td><td>${prodinfo.price}</td>
</tr>
<tr>
<td></td>
<td>
<form action="/Electronicplaza/addToCart/${prodinfo.prodid}" method="get">
Quantity<input type="text" name="quantity">
<input type="submit" value="ADD TO CART">
</form>
</td>
</tr>

</TABLE>
</body>
</html>