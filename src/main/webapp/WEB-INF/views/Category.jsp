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
	
		<h3>Welcome, Enter The category Details</h3>
			
	<form:form  modelAttribute="category"
		action="/Electronicplaza/AddCategory" method="post">
		
			<form:hidden path="catid"  />
		<div class="container">  

<table class="table table-bordered">
		    <tr><td>
			Name:</td>
			<c:if test="${!flag}">
			<td><form:input path="catname"  /></td>
		    </c:if>
		    <c:if test="${flag}">
			<td><form:input path="catname" value="${category.catname}" /></td>
		    </c:if>
		    </tr>
		    <tr><td>
			Description:</td>
			<c:if test="${!flag}">
			<td><form:input path="catdesc"  /></td>
		    </c:if>
		    <c:if test="${flag}">
			<td><form:input path="catdesc" value="${category.catdesc}" /></td>
		    </c:if>
		    </tr>
<tr><td colspan="2">		    
<input type="submit" class="btn btn-info" value="submit">
</td>
</tr>
	</table>
	</div>
	</form:form>
	
		
<div class="container">
	<table class="table table-bordered">	
			<thead>
				<tr bgcolor="pink">

	
				<td>Id</td>
				<td>Name</td>
				<td>Description</td>
				<td>Edit</td>
				<td>Delete</td>
																																																																																																																						
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="category">
						<tr class="success">
							<td>${category.catid}</td>
							<td>${category.catname }</td>
							<td>${category.catdesc }</td>
							<td><a class="btn btn-warning" href="/Electronicplaza/updateCategory/${category.catid}">Edit</a></td>
							<td><a class="btn btn-danger" href="/Electronicplaza/deletecategory/${category.catid}">Delete</a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			</div>
			</body></html>