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
						<a href="/Electronicplaza">Home</a>
					</li>
					<li>
						<a href="Product">Manage Products</a>
					</li>
					<li>
						<a href="Category">Manage Categories</a>
					</li>
					<li>
						<a href="Supplier">Manage Suppliers</a>
					</li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					
      				<li><a href="/Electronicplaza/login"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
			
	</nav>	

			
	<form:form  modelAttribute="category"
		action="/Electronicplaza/AddCategory" method="post">
		
			<form:hidden path="catid"  />
		<div class="container">  

<table class="table table-bordered">
	<tr bgcolor="pink">
	<td colspan="2" align="center">Category Details</td>
	</tr>
	
		    <tr>
		    <td>
			Name:</td>
			<c:if test="${!flag}">
			<td><form:input path="catname" required="true" /></td>
		    </c:if>
		    <c:if test="${flag}">
			<td><form:input path="catname" value="${category.catname}" required="true" /></td>
		    </c:if>
		    </tr>
		    <tr><td>
			Description:</td>
			<c:if test="${!flag}">
			<td><form:input path="catdesc"  required="true" /></td>
		    </c:if>
		    <c:if test="${flag}">
			<td><form:input path="catdesc" value="${category.catdesc}" required="true" /></td>
		    </c:if>
		    </tr>
<tr bgcolor="pink">
<td colspan="2" align="center">		    
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