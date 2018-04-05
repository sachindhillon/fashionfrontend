<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 -->


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>

	</head>
  
	<body>
	<div>
<%@ include file="./navigationmenu.jsp"%>
</div>
<br><br><br><br><br><br>

<div>
${uploadMessage}

	<c:if test="${isUserClickedLogin==true}">
<jsp:include page="login.jsp"></jsp:include>

</c:if>

<c:if test="${isUserClickedRegister==true }">
<jsp:include page="register.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageCategories==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageSuppliers==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isAdminClickedManageProducts==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isUseraAdmin==true }">
<jsp:include page="admin/adminhome.jsp"></jsp:include>
</c:if>

<c:if test="${isUserSelectedProduct==true}">
<jsp:include page="productfile.jsp"></jsp:include>
</c:if>

<c:if test="${isUserClickedMyCart==true}">
<jsp:include page="admin/cart.jsp"></jsp:include>
</c:if>

${invalid}
${successMessage}
${errorMessage}
${failmsg}
${register} 
${category}
</div>
</body>

</html>
