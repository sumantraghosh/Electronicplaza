
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
<body>
<form:form  method="post" action="/Electronicplaza/InsertProduct" modelAttribute="product" enctype="multipart/form-data">
    
<table align="center">
			<tr>
				<td colspan="2"><center>Product Details</center></td>
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
				<td>Product Desc</td>
				<td><form:textarea path="proddesc" /></td>
			</tr>
			<tr>
			<td>Product Image</td>
			<td><form:input type="file" path="pimage" /></td>
	        </tr>
			
			
			
			<tr>
			<td colspan="2"><input type="submit" /></td>
			</tr>



</table>
</form:form>

<!-- Displaying the Product data using Table -->
  <table cellspacing="2" align="center" border="1">

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
		<tr bgcolor="cyan">
			<td>${product.prodid}</td>
			<td>${product.prodname}</td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
			
			<td>${product.suppid}</td>
			<td>${product.proddesc}</td>
			<td>${product.cat.catname}</td>
			<td><a href="<c:url value="deleteProduct/${product.prodid}"/>">Delete</a>
				<a href="<c:url value="updateProduct/${product.prodid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>  
<!-- Completed Displaying Table -->

</body>
</html>





