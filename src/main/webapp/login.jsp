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
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if (name == null) {
        name = "World";
        }
    if (name.equals("admin") && password.equals("password")) {
        // redirect to the profile page
         response.sendRedirect("/profile.jsp");
    }
//    else if(name.equals("") || password.equals("")) {
//        response.sendRedirect("/login.jsp");
//    }

%>

<%--<c:if test="${false}">--%>
    <%--<h2>You will never see this</h2>--%>
<%--</c:if>--%>

<%--<c:if test="${true}">--%>
    <%--<h2>You will *always* see this.</h2>--%>
<%--</c:if>--%>


<html>
<head>
    <title>Hello There!</title>
</head>
<body>

<jsp:include page="partials/welcome-navbar.jsp" />

<h1 style="text-align: center" >Hello, <%= name %></h1>

<p style="text-align: center">Please Login</p>

<form style="text-align: center" method="POST" action="login.jsp">
    <div class="form-group">
    <label for="username">Username</label>
    <input id="username" type="text" name="name" />
    </div>

    <div class="form-group">
    <label for="password">Password</label>
    <input id="password" type="password" name="password" />
    </div>
    <input type="submit" class="btn btn-primary btn-block" value="Log In">
</form>

</body>
</html>

