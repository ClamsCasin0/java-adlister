<%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/28/18
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String color = request.getParameter("color");
    if (color == null) {
        color = "red";
    }
%>
<html>
<head>
</head>
<body>
<div class="container">
    <h1>Please Log In</h1>
    <form action="/pickColor" method="POST">
        <div class="form-group">
            <label for="color">Choose a Color</label>
            <input id="color" name="color" class="form-control" type="text">
        </div>
        <%--<div class="form-group">--%>
            <%--<label for="password">Password</label>--%>
            <%--<input id="password" name="password" class="form-control" type="password">--%>
        <%--</div>--%>
        <input type="submit" class="btn btn-primary btn-block" value="Choose Color">
    </form>
</div>
</body>
</html>
