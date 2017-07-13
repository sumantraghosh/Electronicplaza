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
