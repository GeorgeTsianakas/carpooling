<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            <title>Trip not found</title>
        </head>
        <body>
            <div class="w3-container">
                <h1 class="w3-display-topmiddle w3-padding w3-margin-top">No matching results</h1>
                <div class="w3-display-middle w3-padding w3-display-container">
                    <a href="${path}/findaride" class="w3-button w3-large w3-round-large w3-padding w3-margin-right w3-blue w3-hover-light-blue w3-left ">Back to search</a>
                <a href ="${path}/getalltrips" class="w3-button  w3-large w3-round-large w3-padding w3-blue w3-hover-light-blue w3-right">All available trips</a>
            </div>
        </div>
    </body>
</html>
