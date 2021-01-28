<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Garage Parts Management System</title>
<style>
body {
	background-color: #3366ff;
}

#login {
	border: 2px solid black;
	margin: 200px 20%;
	padding: 50px;
	background-color: #66e0ff;
}

#login td {
	padding: 10px;
}
</style>
</head>
<body>
	<div id="login" align="center">
		<h1>Garage Parts Management System</h1>
		<form action="loginPh.jsp" method="post">
			<table>
				<tr>
					<td><label for="uname">User Name</label></td>
					<td><input type="text" name="uname"></td>
				</tr>
				<tr>
					<td><label for="password">Password</label></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Login" style="background: #00ff00"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>