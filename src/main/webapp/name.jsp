<%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/28/18
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
        String name = request.getParameter("name");
        if (name == null) {
            name = "user";
        }
%>




<html>
<head>
    <title>Drill 1</title>
</head>
<body>
<div class="container">
    <h1>Please enter your name</h1>
    <%--howdy.jsp worked on 1st time through--%>
    <form action="/howdy" method="POST">
        <div class="form-group">
            <label for="name">Username</label>
            <input id="name" name="name" class="form-control" type="text">
        </div>
        <%--<div class="form-group">--%>
            <%--<label for="password">Password</label>--%>
            <%--<input id="password" name="password" class="form-control" type="password">--%>
        <%--</div>--%>
        <input type="submit" class="btn btn-primary btn-block" value="Submit">
    </form>
</div>
</body>
</html>
