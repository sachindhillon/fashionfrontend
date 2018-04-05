<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart product</title>
</head>
<body>
	<form action="addCart" method="post">
		<img alt="hello no image"
			src="resources/images/${selectedproduct}.png" /><br> name of
		product :<input type="text" value="${selectedproduct.pname}"
			name="productName" readonly="readonly"><br> 
			Product id:<input type="text"
	value="${selectedproduct.pid}" name="productid"readonly="readonly"><br>
		price:<input type="text" value="${selectedproduct.price}" name="price" readonly="readonly"><br>
		Quantity:<input type="text" name="quantity"
			placeholder="quantity of products" ><br> <input
			type="submit" value="add to cart">
	</form>
</body>
</html>