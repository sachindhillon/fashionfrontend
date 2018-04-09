<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Page</title>
 <style>
input[type="text"] {border:0;}
</style>
</head>
<body>
	<table class="table table-bordered">
		<tbody>
			<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Quantity</th>

			</tr>
			<c:forEach var="cart" items="${cartList}">
				<tr>
					<td><input type="text" name="productid"
						value="${cart.productid}" readonly="readonly"></td>
					<td><input type="text" name="productName"
						value="${cart.productName}" readonly="readonly"></td>
					<td><input type="text" name="price" value="${cart.price}"></td>

					<td><input type="text" name="quantity"
						value="${cart.quantity}" readonly="readonly"></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</body>
</html>