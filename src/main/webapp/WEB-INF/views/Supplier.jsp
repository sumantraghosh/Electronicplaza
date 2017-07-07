<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="index.css">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <!-- stylesheet link -->
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <!-- bootstrap cdn -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
	  </script>
<title>Insert title here</title>
</head>
<body>
	
		<h3>Welcome, Enter The Supplier Details</h3>
		
		
		
		<div>
	<form:form  modelAttribute="supplier"
		action="/Electronicplaza/AddSupplier" method="post">
		
			<form:hidden path="suppid"  />
		
		<center>
			<label >Name:</label>
			<c:if test="${!flag}">
			<form:input path="suppname"  />
		    </c:if>
		    <c:if test="${flag}">
			<form:input path="suppname" value="${supplier.suppname}" />
		    </c:if>
		    <br/>
			<label >Address:</label>
			<c:if test="${!flag}">
			<form:input path="address"  />
		    </c:if>
		    <c:if test="${flag}">
			<form:input path="address" value="${supplier.address}" />
		    </c:if>
		    <br>
<button type="submit" class="btn btn-default">Submit</button>
	</center>
	</form:form>
	</div>
		
<div class="container">
	<table class="table table-bordered">	
			<thead>
				<tr bgcolor="pink">

	
				<td>Id</td>
				<td>Name</td>
				<td>Address</td>
				<td>Edit</td>
				<td>Delete</td>
																																																																																																																						
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="supplier">
						<tr class="success">
							<td>${supplier.suppid}</td>
							<td>${supplier.suppname }</td>
							<td>${supplier.address }</td>
							<td><a class="btn btn-warning" href="/Electronicplaza/updateSupplier/${supplier.suppid}">Edit</a></td>
							<td><a class="btn btn-danger" href="/Electronicplaza/deletesupplier/${supplier.suppid}">Delete</a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			</div>
			</body></html>