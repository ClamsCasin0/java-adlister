<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/28/18
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container">
    <h1>Viewing your Howdy.</h1>
    <h1>${name}</h1>
</div>

<%
    response.setContentType("text/html");
//    sets up writer/println
    PrintWriter pw = response.getWriter();
//    sets up request to get name from name.jsp
    String user = request.getParameter("name");
    pw.println("<h1> Well, Howdy " + user + "!!!</h1>");
%>
</body>
</html>
