<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My Account Profile</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js">
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="css/profile.css" rel="stylesheet">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update my profile</title>
    </head>
<body>
<%@include file="header.jsp" %>
<springForm:form method="Post" modelAttribute="user" action="updatetheprofile">
    <table class="w3-container w3-panel w3-padding-small w3-table-all ">
        <thead>
        <div class="w3-panel  w3-center">
            <h1>Update Profile</h1>
        </div>
        </thead>
        <tr class="w3-light-grey">
            <div class="w3-container w3-panel w3-padding-small ">

                <springForm:hidden path="userid" value="${user.userid}" class=" w3-input w3-border w3-round"/>
            </div>
            <div class="w3-container w3-panel w3-padding-small ">
                <label>User Name</label>
                <springForm:input path="username" value="${user.username}" class=" w3-input w3-border w3-round"/>
            </div>
        </tr>
        <tr>
            <div class="w3-container w3-panel w3-padding-small ">
                <label>First Name</label>
                <springForm:input path="firstname" value="${user.firstname}" class=" w3-input w3-border w3-round"/>
            </div>
        </tr>
        <tr>
            <div class="w3-container w3-panel w3-padding-small ">
                <label>Last Name</label>
                <springForm:input path="lastname" value="${user.lastname}" class=" w3-input w3-border w3-round"/>
            </div>
        </tr>
        <tr>
            <div class="w3-container w3-panel w3-padding-small ">
                <label>E-mail</label>
                <springForm:input path="email" value="${user.email}" class=" w3-input w3-border w3-round"/>
            </div>
        </tr>
        <tr>
            <div class="w3-container w3-panel w3-padding-small ">
                <label> Birth-Date </label>
                <springForm:input path="birthdate" value="${user.birthdate}" class=" w3-input w3-border w3-round"/>
            </div>
        </tr>
        <tr>
            <div class="w3-container w3-panel w3-padding-small ">
                <label> Cellphone </label>
                <springForm:input path="cellphone" value="${user.cellphone}" class=" w3-input w3-border w3-round"/>
            </div>
        </tr>
        <tr>
        </tr>
    </table>
    <div>
        <input type="submit" class="w3-btn w3-blue w3-margin-left">
    </div>
</springForm:form>
<p>
    <%@include file="footer.html" %>
</p>
</body>
</html>