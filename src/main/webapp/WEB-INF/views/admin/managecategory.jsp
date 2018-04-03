<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>manage category</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<style>
a {
font-family:tahoma;
font-size:20px;
text-decoration:none;
color:blue;
}

a:hover {
color:indigo;
}
</style>
</head>
<body>
<div class="container">
<form action="saveCategory" method="post">
<table class="table table-bordered">
<tr>
<td>
<input type="text" name="cid" placeholder="categoryid" value="${updateCategory.cid }"required></td></tr>
<tr><td>
<input type="text" name="cname" placeholder="categoryname" value="${updateCategory.cname }" required></td></tr>
<tr><td>
<input type="text" name="cdescription" placeholder="categorydescription"  value="${updateCategory.cdescription }" required></td></tr>
<tr><td>
<input type="submit"  class="btn btn-primary" value="Add/Update Category">
<input type="reset" class="btn btn-warning" value="Reset"></td>

</tr>
</table>
</form>
</div>
<div class="container">
<table class="table table-bordered">
<tr><th>CategoryId</th>
<th>CategoryName</th>
<th>CategoryDescription</th>
<th>Action</th>
</tr>

<c:forEach var="categories" items="${categories}">
<tr >
<td> ${categories.cid}</td>
<td> ${categories.cname}</td>
<td>${categories.cdescription}</td>
<td><a href="updateCategory/?id=${categories.cid}" ><button type="button" class="btn btn-primary">Edit</button></a>
<a href="deleteCategory/?id=${categories.cid}"><button type="button" class="btn btn-warning">Delete</button></a></td>
</tr>
</c:forEach>

</table>
</div>
${category} 
</body>
</html>