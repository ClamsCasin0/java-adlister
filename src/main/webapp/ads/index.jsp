<%--
  Created by IntelliJ IDEA.
  User: armandosegura
  Date: 3/28/18
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:include page="/partials/navbar.jsp" />
<h1>Welcome to ads!</h1>

<c:forEach var="ad" items="${ads}">
    <div class="col-md-6">
    <h1>${ad.title}</h1>
    <hr>
    <p>${ad.description}</p>
    </div>
</c:forEach>


<%--add create bonus , not complete--%>
<h1>Create a new Ad</h1>
        <form action="/ads/create" method="POST">
                <div class="form-group">
                    <label for="title">name</label>
                    <input id="title" name="title" class="form-control" type="text">
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <input id="description" name="description" class="form-control" type="text">
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Create">
            </form>
    </div>

</body>
</html>
</body>
</html>
