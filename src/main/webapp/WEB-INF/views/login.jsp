<%@ page language="java" contentType="text/html"%>
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
						<a href="AllProducts">Appliances</a>
					</li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Electronicplaza/UserDetail"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      				<li><a href="/Electronicplaza/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
			
	</nav>		
<form action="perform_login" method="post">
		<div class="container">
		<table class="table table-bordered" >
			<tr bgcolor="pink">
				<td colspan="2" align="center">Please Enter Login Details</td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><input type="text" name="username" required /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" required /></td>
			</tr>
			
			<tr bgcolor="pink">
				<td colspan="2" align="center">
						<input type="submit" class="btn btn-info" value="SUBMIT" >
					</td>
			</tr>
		</table>
		</div>
	</form>


</body>
</html>

</body>
</html>
