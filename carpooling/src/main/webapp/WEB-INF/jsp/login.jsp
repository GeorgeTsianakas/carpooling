<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Sign In</title>
</head>
    <div class="w3-container">
        <springForm:form method="post" modelAttribute="user" action ="${pageContext.request.contextPath}/selectaride" cssClass="w3-display-middle w3-padding w3-light-gray w3-round-large">
            <div class="w3-padding">
                <springForm:input path="username" cssClass="w3-input w3-padding w3-margin-top w3-round-large"
                    placeholder="Enter username" />
                <springForm:errors path="username" />
            </div>
            <div class="w3-padding">
                <springForm:input path="password" type="password"
                    cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter password" />
                <springForm:errors path="password" />
            </div>
            <div class="w3-padding">
                <button type="submit" name="login"
                    class="w3-button w3-blue w3-round-large w3-hover-light-blue w3-margin-top w3-block w3-padding">Sign In 
                </button>
            </div>
        </springForm:form>
        </div>
        <div class="w3-display-bottom">
            <div>
                <p>You don't have an account?</p>
            </div>
            <div> 
                <a href="${pageContext.request.contextPath}/register/createaccount">Sign up here!</a>
            </div>
        </div>
</body>
</html>