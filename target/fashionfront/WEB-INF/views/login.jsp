<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<style>
input[type="text"], input[type="password"], input[type="submit"] {
width:100%;
box-sizing:border-box;
}
</style>
</head>
<body>
<h1 align="center">Login to Fashion Wing</h1>
	<form action="loginUser" method="post">
	<table align="center" style="padding:30px;width:300px;height:150px;border: 2px solid black;">
		<tr>
			<td><input type="text" name="text1" placeholder="Email" required></td>
		</tr>
		<tr>
			<td><input type="password" name="text2" placeholder="Password" required></td>
		</tr>
		<tr>
			<td><input type="submit" value="Login"></td>
		</tr>
	</table>
	</form>


	${Message}
</body>
</html>