<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create A New User</title>
    </head>
    <body>
        <h1>Insert User</h1>
        <form:form method="POST" modelAttribute="user" action="doinsertuser">
            <table>
                <tbody>
                    <tr>
                        <td><form:input path="userid"/>enter User ID</td>
                    </tr>
                    <tr>
                        <td><form:input path="username"/>enter Username</td>
                    </tr>
                    <tr>
                        <td><form:input path="password"/>enter Password</td>
                    </tr>
                    <tr>
                        <td><form:input path="email"/>enter your E-mail</td>
                    </tr>
                    <tr>
                        <td><form:input path="firstname"/>enter First Name</td>
                    </tr>
                    <tr>
                        <td><form:input path="lastname"/>enter Last Name</td>
                    </tr>
                    <tr>
                        <td><form:input path="birthdate"/>enter Birth Date</td>
                    </tr>
                    <tr>
                        <td><form:input path="cellphone"/>enter Mobile Phone</td>
                    </tr>
                </tbody>
                <td><input type="submit" value="Insert User"/></td>
            </table>
        </form:form>
    </body>
</html>
