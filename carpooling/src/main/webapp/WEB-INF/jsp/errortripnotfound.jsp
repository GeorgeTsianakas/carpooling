<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trip Not Found</title>
    </head>
    <body>
        <h1>No matching results</h1>
        <a href="${path}/findaride">Back to search</a>
    <a href ="${path}/getalltrips">Click here for all the available trips</a>
    </body>
</html>
