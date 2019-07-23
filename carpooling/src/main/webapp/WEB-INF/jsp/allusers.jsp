<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Available Users</title>
    </head>
    <body>
            <table border="solid black 1px">
        <thead>
            <tr>
                <th>Users ID</th>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Birth Date</th>
                <th>Mobile Phone</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var = "user" items="${users}">
                    <tr>
                        <td>
                        <c:out value="${user.userid}"/>
                        </td>
                        <td>
                        <c:out value="${user.username}"/>
                        </td>
                        <td>
                        <c:out value="${user.password}"/>
                        </td>
                        <td>
                        <c:out value="${user.email}"/>
                        </td>
                        <td>
                        <c:out value="${user.firstname}"/>
                        </td>
                        <td>
                        <c:out value="${user.lastname}"/>
                        </td>
                        <td>
                        <c:out value="${user.birthdate}"/>
                        </td>
                        <td>
                        <c:out value="${user.cellphone}"/>
                        </td>
                        <td>
                            <form method="GET" action="updateuser/${user.userid}">
                                <button type="submit">Update</button>
                            </form>
                        </td>
                        <td>
                            <form method="GET" action="deleteuser/${user.userid}">
                                <button type="submit">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody><br>
            <td>
        <form method="GET" action="insertuser">
            <button type="submit">Insert New User</button>
        </form>
    <td/>
        </table><br>
    </body>
</html>