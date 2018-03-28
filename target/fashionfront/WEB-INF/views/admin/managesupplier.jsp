<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>manage suppliers</title>
</head>
<body>
<form action="saveSupplier" method="post">
<table>
<tr><td>
<input type="text" name="id" placeholder="supplier id" required></td></tr>
<tr><td>
<input type="text" name="name" placeholder="supplier name" required></td></tr>
<tr><td>
<input type="text" name="address" placeholder="supplier address" required></td></tr>
<tr><td>
<input type="submit" value="Addsupplier"></td></tr>
</table>
</form>
<table border=5px>
<tr><th>supplierId</th>
<th>supplierName</th>
<th>supplierAddress</th>
<th>Action</th>
</tr>
<c:forEach var="supplier" items="${supplier}">
<tr>
<td> ${supplier.id}</td>
<td> ${supplier.name}</td>
<td>${supplier.address}</td>
<td><a href="updateSupplier">update</a>
<a href="deleteSupplier">delete</a></td>
</tr>
</c:forEach>

</table>
</body>
</html>