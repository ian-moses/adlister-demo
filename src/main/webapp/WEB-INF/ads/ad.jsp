<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing an item"/>
    </jsp:include>
    <jsp:include page="/WEB-INF/partials/style.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

    <c:forEach var="ad" items="${ads}">
        <div class="col-sm-12">
            <h1><c:out value="${ad.title}"/><small> <c:out value="${ad.category}"/></small></h1>
            <p><c:out value="${ad.description}"/></p>
        </div>
    </c:forEach>
</div>

</body>
</html>
