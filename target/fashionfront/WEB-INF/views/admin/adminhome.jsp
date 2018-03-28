<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home Page</title>
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
<c:if test="${isAdminClickedManageProducts==true }">
<jsp:include page="manageproducts.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageCategories==true }">
<jsp:include page="managecategory.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageSuppliers==true }">
<jsp:include page="managesupplier.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedSaveSuppliers==true }">
<jsp:include page="managecategory.jsp"></jsp:include>
</c:if>
<c:if test="${isAdminClickedDeleteCategory==true }">
<jsp:include page="managecategory.jsp"></jsp:include>
</c:if>
<center>
<table border=5px>

<tr>
<th> Operations</th>
</tr>
<tr>
<td>
<a href="manageCategories">Manage Category</a>
</td></tr>
<tr><td>
<a href="manageSuppliers">Manage Supplier</a>
</td></tr>
<tr><td>
<a href="manageProducts">Manage Products</a>
</td></tr>
</table>
</center>
</body>
</html>