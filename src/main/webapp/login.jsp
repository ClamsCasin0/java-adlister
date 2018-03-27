<%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/27/18
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(request.getMethod().equalsIgnoreCase("post")) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equals("admin") && password.equals("password")) {
        response.sendRedirect("/profile.jsp");
    }
}
%>



<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>

    <title>Hello There!</title>
</head>
<body>

<jsp:include page="partials/welcome-navbar.jsp" />


<p style="text-align: center">Please Login</p>
<div class="container">
<form style="text-align: center" method="POST" action="login.jsp">
    <div class="form-group">
    <label for="username">Username</label>
    <input id="username" type="text" class="form-control" name="username" />
    </div>

    <div class="form-group">
    <label for="password">Password</label>
    <input id="password" type="password" class="form-control" name="password" />
    </div>
    <input type="submit" class="btn btn-primary btn-block" value="Log In">
</form>
</div>

</body>
</html>

