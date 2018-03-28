<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navigation_menu</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="margin:0;padding:0;">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="homePage" title="go to home">Fashion Wing</a>
    </div>
    <ul class="nav navbar-nav">
   <c:forEach var="categories" items="${categories}">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">${categories.cname}<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
     </c:forEach>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <c:if test='<%=(Boolean)session.getAttribute("loggedIn")!=null&&(Boolean)session.getAttribute("loggedIn")==true %>'>
       <li><a><%=session.getAttribute("username") %></a></li>
     	<%-- <li><a href="<c:url value="/perform_logout"/>">LOGOUT</a></li> --%>
     	<li><a href="logoutUser"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
     </c:if>
     
     <c:if test='<%=(Boolean)session.getAttribute("loggedIn")==null%>'>
      	<li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      	<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
     </c:if>
    </ul>
  </div>
</nav>


</body>
</html>