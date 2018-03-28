<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>manage category</title>
</head>
<body>

<form action="saveCategory" method="post">
<table border=5px bgcolor=lightgreen>
<tr>
<td>
<input type="text" name="id" placeholder="categoryid" required></td></tr>
<tr><td>
<input type="text" name="name" placeholder="categoryname" required></td></tr>
<tr><td>
<input type="text" name="description" placeholder="categorydescription" required></td></tr>
<tr><td>
<input type="submit" value="AddCategory"></td></tr>
</table>
</form>
<table border=5px>
<tr><th>categoryId</th>
<th>categoryName</th>
<th>categoryDescription</th>
<th>Action</th>
</tr>
<c:forEach var="categories" items="${categories}">
<tr>
<td> ${categories.id}</td>
<td> ${categories.name}</td>
<td>${categories.description}</td>
<td><a href="updateCategory">update</a>
<a href="deleteCategory/?id=${categories.id}">delete</a></td>
</tr>
</c:forEach>

</table>
${category} 
</body>
</html>