<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing an item"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h1><c:out value="${ad.title}"/></h1>
            <p><c:out value="${ad.description}"/></p>
            <p><c:out value="${ad.id}"/></p>
            <p><c:out value="${ad.category}"/></p>
        </div>
    </c:forEach>
</div>

</body>
</html>
