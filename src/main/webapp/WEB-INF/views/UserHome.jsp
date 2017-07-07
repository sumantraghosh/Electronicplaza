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

<div id="container">
<div class="row">
<div class="col-sm-6 col-md-3">

<c:forEach items="${prodlist}" var="product">
<a href="/Electronicplaza/ProdDesc/${product.prodid}" class="thumbnail">
<img src="<c:url value="/assets/images/${product.prodid}.jpg"/>"/>

</a>

<div class="caption">
<h4>${product.prodname}</h4>
<p>${product.price}</p>
</div>
</c:forEach>

</div>
</div>
</div>
</body>
</html>