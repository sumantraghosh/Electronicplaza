			
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
<form:form  method="post" action="/Electronicplaza/InsertProduct" modelAttribute="product" enctype="multipart/form-data">
  <div class="container">  

<table class="table table-bordered">
			<tr>
				<td colspan="2" >Product Details</td>
			</tr>
			<tr>
				<td>Product ID</td>
				<td><form:input path="prodid" /></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><form:input path="prodname" /></td>
			</tr>
			
			<tr>
				<td>Category</td>
				<td><form:select path="cat.catid">
						<form:option value="0" label="------Select----" />
						<form:options items="${catlist}"  itemValue="catid" itemLabel="catname"/>
					</form:select>
				</td>
			</tr>		
			<tr>
				<td>Supplier</td>
				<td><form:input path="suppid" /></td>
				</tr>
			
			<tr>
				<td>Price</td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>Stock</td>
				<td><form:input path="quantity" /></td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td><form:textarea path="proddesc" /></td>
			</tr>
			<tr>
			<td>Product Image</td>
			<td><form:input type="file" path="pimage" /></td>
	        </tr>
			
			
			
			<tr>
			<td colspan="2"><input type="submit" class="btn btn-info" value="Submit"></td>
			</tr>



</table>

</div>
</form:form>

<!-- Displaying the Product data using Table -->
  <div class="container">
	<table class="table table-bordered">
  

	<tr bgcolor="pink">
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
	
		<td>Supplier Id</td>
		<td>Description</td>
		<td>Catname</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${prodlist}" var="product">
		<tr>
			<td>${product.prodid}</td>
			<td>${product.prodname}</td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
			
			<td>${product.suppid}</td>
			<td>${product.proddesc}</td>
			<td>${product.cat.catname}</td>
			<td><a class="btn btn-warning" href="/Electronicplaza/deleteProduct/${product.prodid}">Delete</a>
				<a class="btn btn-danger" href="/Electronicplaza/updateProduct/${product.prodid}">Update</a>
			</td>
		</tr>
	</c:forEach>
</table> 
</div> 
<!-- Completed Displaying Table -->

</body>
</html>






