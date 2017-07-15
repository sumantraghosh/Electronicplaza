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
					
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					
      				<li><a href="/Electronicplaza/login"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
			
	</nav>	

			

<form  action="/Electronicplaza/InsertUser" method="post">
  <div class="container">  

<table class="table table-bordered">
			<tr bgcolor="pink">
				<td colspan="2" align="center">User Registration Details</td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><input type="text" name="username" required /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" required /></td>
			</tr>
			
			<tr>
				<td>Enabled</td>
				<td><select name="enabled" >
				
						<option selected value="true">true</option>
						<option value="false">false</option>
					</select>
				</td>
			</tr>		
			
			
			<tr>
				<td>Customer Name</td>
				<td><input type="text" name="customername" /></td>
			</tr>
			
			<tr>
				<td>Address</td>
				<td><textarea name="addr" rows="5" cols="20" required /></textarea></td>
			</tr>
			
			
			
			
			<tr bgcolor="pink">
			<td colspan="2" align="center"><input type="submit" class="btn btn-info" value="Submit"></td>
			</tr>



</table>
</div>
</form>
	
			
			
</body>
</html>