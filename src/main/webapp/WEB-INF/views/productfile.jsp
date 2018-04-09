<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
input[type="text"] {border:0;}

</style>
</head>
<body>
	<form action="addCart" method="post">
	<div class="container"  style="padding:0px 300px;">
	<table class="table table-bordered">
	<tr>
	<td>
	<center>
		<img alt="hello no image"
			src="resources/images/${selectedproduct.pid}.png" /></center>
			</td></tr>
			<tr>
			<td>
			 <b>Name Of
		Product :</b><input type="text" value="${selectedproduct.pname}"
			name="productName" readonly="readonly"></td></tr>
			<tr><td>
			<b>Product id:</b><input type="text"
	value="${selectedproduct.pid}" name="productid"readonly="readonly">
	</td>
	</tr>
	<tr>
	<td>
		<b>price:</b><input type="text" value="${selectedproduct.price}" name="price" readonly="readonly">
		</td></tr>
		<tr>
		<td>
		<b>Quantity:</b><input type="text" name="quantity"
			placeholder="quantity of products" required ></td></tr>
			<tr><td>
			 <button type="submit" class="btn btn-info">
					<i class="glyphicon glyphicon-shopping-cart">AddToCart</i>
				</button>
				</td>
				</tr>
			</table>
			</div>
	</form>
</body>
</html>