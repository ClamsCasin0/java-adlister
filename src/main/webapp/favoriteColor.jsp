<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/28/18
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Your Favorite Color Page</title>
</head>
<body>

<div style="padding: 300px; background-color: ${param.color}">
    <h1>Welcome!</h1>
</div>

<%
    response.setContentType("text/html");
//    sets up writer/println
    PrintWriter pw = response.getWriter();
//    sets up request to get name from name.jsp
    String userColor = request.getParameter("color");
    request.setAttribute("color", userColor);
    pw.println("<h1> Your favorite color is " + userColor + "!!!</h1>");
%>


</body>
</html>
