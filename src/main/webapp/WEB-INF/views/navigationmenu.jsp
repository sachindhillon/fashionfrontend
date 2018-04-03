<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navigation_menu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style type="text/css">
.navbar {
	
	background-color: lightblue;
}

</style>
</head>
<body>
	<nav class="navbar navbar-fixed-top">
	<div class="navbar-header">
	
	
		<a class="navbar-brand" href="#">  Fashion Wing</a>
	</div>
	
	<div class="container-fluid">

		<ul class="nav navbar-nav">
		<li><img  alt="hello" src="resources/images/fffff.png"/></li>
			<li><a href="homePage">Home</a></li>
			
			
			<c:forEach var="category" items="${categories}">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">${category.cname}<span
						class="caret"></span></a>
						<c:forEach var="product" items="${category.products}">
					<div class="dropdown-menu">
					
	<a href="get/product?id=${product.pid }">${product.pname}</a>
					</div></c:forEach></li>
			</c:forEach>
			</ul>
	<form class="navbar-form navbar-left" role="search">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
   
    <button type="submit" class="btn btn-info"> <i class="glyphicon glyphicon-search"></i></button>
     </div>
</form>
	
	
	<ul class="nav navbar-nav navbar-right">
		<c:if
			test='<%=(Boolean) session.getAttribute("loggedIn") != null
						&& (Boolean) session.getAttribute("loggedIn") == true%>'>
			<li><a><%=session.getAttribute("username")%></a></li>
			<%-- <li><a href="<c:url value="/perform_logout"/>">LOGOUT</a></li> --%>
			<li><a href="logoutUser"><span
					class="glyphicon glyphicon-log-in"></span> Logout</a></li>
		</c:if>

		<c:if test='<%=(Boolean) session.getAttribute("loggedIn") == null%>'>
			<li><a href="register"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					Sign In</a></li>
		</c:if>
	</ul>
	</div></nav>
</body>
</html>