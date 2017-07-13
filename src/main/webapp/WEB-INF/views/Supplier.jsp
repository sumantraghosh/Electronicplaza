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
						<a href="#">Home</a>
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
		
		
	<form:form  modelAttribute="supplier"
		action="/Electronicplaza/AddSupplier" method="post">
		
			<form:hidden path="suppid"  />
		
		
		<div class="container">  

<table class="table table-bordered">
<tr><td colspan="2" align="center">Supplier Details</td></tr>


            <tr>
			<td>Name:</td>
			<c:if test="${!flag}">
			<td><form:input path="suppname"  required="true" /></td>
		    </c:if>
		    <c:if test="${flag}">
			<td><form:input path="suppname" value="${supplier.suppname}" required="true" /></td>
		    </c:if>
		    </tr>
		    <tr>
			<td>Address:</td>
			<c:if test="${!flag}">
			<td><form:input path="address" required="true" /></td>
		    </c:if>
		    <c:if test="${flag}">
			<td><form:input path="address" value="${supplier.address}" required="true" /></td>
		    </c:if>
		    </tr>
		    <tr><td colspan="2" align="center">
           <input type="submit" class="btn btn-info" value="Submit">
           </td></tr>
	</table>
	</div>
	</form:form>
	
		
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