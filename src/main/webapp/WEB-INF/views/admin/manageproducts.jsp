<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>manage products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
input[type="text"] {border:0;}
</style>
</head>
<body>
<div class="container">
<form action="saveProducts" method="post" enctype="multipart/form-data">
<table class="table table-bordered">
<tr><td>
<input type="text" name="pid" value="${updateproduct.pid }" placeholder="productsid" required></td></tr>
<tr><td>
<input type="text" name="pname" value="${updateproduct.pname }" placeholder="productsname" required></td></tr>
<tr><td>
<input type="text" name="pdescription" value="${updateproduct.pdescription }"  placeholder="productsdescription" required></td></tr>
<tr><td>
<input type="text" name="price" value="${updateproduct.price }" placeholder="product price" required></td></tr>

<tr><td>
<select name="category">
<option value="#" disabled = "disabled" selected="selected">${updateproduct.categoryID }Select Category...</option>

<c:forEach var="category" items="${categories}">
<option  value="${category.cid}">${category.cname}</option>
</c:forEach>
</select></td></tr>
<tr><td>
<select name="supplier">
<option value="#" disabled = "disabled" selected="selected">${updateproduct.supplierID }Select Supplier...</option>
<c:forEach var="supplier" items="${supplier}">
<option  value="${supplier.sid}">${supplier.sname}</option>
</c:forEach>
</select>
</td></tr>
<tr><td>
<input type="file" name="file">
</td></tr>


<tr><td>
<input type="submit" class="btn btn-primary" value="Add/Update Product">
<input type="reset" class="btn btn-warning" value="Reset">
</td></tr>
</table>
</form>
</div>
<div class="container">
<table class="table table-bordered">
<tr><th>ProductId</th>
<th>ProductName</th>
<th>ProductDescription</th>
<th>Price</th>
<th>Action</th>
</tr>
<c:forEach var="products" items="${products}">
<tr>
<td> ${products.pid}</td>
<td> ${products.pname}</td>
<td>${products.pdescription}</td>
<td>${products.price}</td>
<td><a href="updateProducts/?id=${products.pid}"><button type="button" class="btn btn-primary">Edit</button></a>
<a href="deleteProducts/?id=${products.pid}"><button type="button" class="btn btn-warning">Delete</button></a></td>
</tr>
</c:forEach>

</table>
</div>
</body>
</html>