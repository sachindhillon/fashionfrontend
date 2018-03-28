<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>manage products</title>
</head>
<body>
<form action="saveProducts" method="post">
<table border=5px>
<tr><td>
<input type="text" name="id" placeholder="productsid" required></td></tr>
<tr><td>
<input type="text" name="name" placeholder="productsname" required></td></tr>
<tr><td>
<input type="text" name="description" placeholder="productsdescription" required></td></tr>
<tr><td>
<input type="text" name="categoryid" placeholder="category id" required></td></tr>
<tr><td>
<input type="text" name="supplierid" placeholder="supplier id" required></td></tr>
<tr><td>
<input type="submit" value="Addproducts"></td></tr>
</table>
</form>
<table border=5px>
<tr><th>categoryId</th>
<th>categoryName</th>
<th>categoryDescription</th>
<th>Action</th>
</tr>
<c:forEach var="products" items="${products}">
<tr>
<td> ${products.id}</td>
<td> ${products.name}</td>
<td>${products.description}</td>
<td><a href="updateProducts">update</a>
<a href="deleteproducts">delete</a></td>
</tr>
</c:forEach>

</table>
</body>
</html>