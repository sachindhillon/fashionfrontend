<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>manage suppliers</title>


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
<form action="saveSupplier" method="post">
<table class="table table-bordered">
<tr><td>
<input type="text" name="sid" placeholder="supplier id" value="${updateSupplier.sid }"required></td></tr>
<tr><td>
<input type="text" name="sname" placeholder="supplier name"value="${updateSupplier.sname }" required></td></tr>
<tr><td>
<input type="text" name="saddress" placeholder="supplier address"value="${updateSupplier.saddress }" required></td></tr>
<tr><td>
<input type="submit" class="btn btn-primary" value="Add/Update Supplier">

<input type="reset" class="btn btn-warning" value="Reset">
</td>
</tr>
</table>
</form>
</div>
<div class="container">
<table class="table table-bordered">
<tr><th>SupplierId</th>
<th>SupplierName</th>
<th>SupplierAddress</th>
<th>Action</th>
</tr>
<c:forEach var="supplier" items="${supplier}">
<tr>
<td> ${supplier.sid}</td>
<td> ${supplier.sname}</td>
<td>${supplier.saddress}</td>
<td><a href="updateSupplier/?id=${supplier.sid}"><button type="button" class="btn btn-primary">Edit</button></a>
<a href="deleteSupplier/?id=${supplier.sid}"><button type="button" class="btn btn-warning">Delete</button></a></td>
</tr>
</c:forEach>

</table>
</div>
</body>
</html>