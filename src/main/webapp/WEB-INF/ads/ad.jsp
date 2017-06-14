<%--
  Created by IntelliJ IDEA.
  User: mosesfranco
  Date: 6/14/17
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <h1>${ad.title} <small>${ad.category}</small></h1>
    <h3>Sold by: ${ad.user_id}</h3>
    <p>${ad.description}</p>
</body>
</html>
