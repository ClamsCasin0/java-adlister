<%@ page import="java.util.Random" %>
<%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/28/18
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
Random rand = new Random();

int  n = rand.nextInt(100) + 1;



//    Integer number;
    Integer number = Integer.valueOf(request.getParameter("number"));
//    if (number == null) {
//        number = 1;
//    }
    if (number.equals(n)) {
            response.sendRedirect("/result");
        }


%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="container">

    <h1>Please Guess a number bewtween 1 - 100</h1>
    <form action="result.jsp" method="POST">
        <div class="form-group">
            <label for="number">Guess a Number</label>
            <input id="number" name="number" class="form-control" type="number">
        </div>
        <%--<div class="form-group">--%>
        <%--<label for="password">Password</label>--%>
        <%--<input id="password" name="password" class="form-control" type="password">--%>
        <%--</div>--%>
        <input type="submit" class="btn btn-primary btn-block" value="Submit Guess">
    </form>
</div>

</body>
</html>
