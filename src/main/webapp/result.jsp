<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/28/18
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>YOU GUESSED..........</title>
</head>
<body>
<%--<%--%>
    <%--response.setContentType("text/html");--%>
<%--//    sets up writer/println--%>
    <%--PrintWriter pw = response.getWriter();--%>
<%--//    sets up request to get name from name.jsp--%>
    <%--Integer userNumber = Integer.valueOf(request.getParameter("number"));--%>
    <%--request.setAttribute("number", userNumber);--%>
    <%--pw.println("<h1> Your chose" + userNumber + " and you were RIGHT!!!</h1>");--%>
<%--%>--%>

    <h1>${message}</h1>

    <c:if test="${!message.equals(\"YOU WON!\")}">
    <<a href="/guess">Guess again</a>
    </c:if>

</body>
</html>
