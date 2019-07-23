<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A User of your Choice</title>
    </head>
    <body>
        <h1>Update User</h1>
        <form:form method="POST" modelAttribute="newuser" action="doupdateuser">
            <table>
                <tbody>
                    <tr>
                        <td><form:input path="userid" value="${olduser.userid}"/>User ID</td>
                        <td><form:input path="username" value="${olduser.username}"/>Username</td>
                        <td><form:input path="password" value="${olduser.password}"/>Password</td>
                        <td><form:input path="email" value="${olduser.email}"/>Email</td>
                        <td><form:input path="firstname" value="${olduser.firstname}"/>First Name</td>
                        <td><form:input path="lastname" value="${olduser.lastname}"/>Last Name</td>
                        <td><form:input path="birthdate" value="${olduser.birthdate}"/>Birth Date</td>
                        <td><form:input path="cellphone" value="${olduser.cellphone}"/>Mobile Phone</td>
                    </tr>
                </tbody>
                <td><input type="submit" value="Update User"/></td>
            </table>
        </form:form>
    </body>
</html>
