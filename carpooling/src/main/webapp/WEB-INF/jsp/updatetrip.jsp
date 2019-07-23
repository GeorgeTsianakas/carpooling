<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Trip of your Choice</title>
    </head>
    <body>
        <h1>Update Trip</h1>
        <form:form method="POST" modelAttribute="newtrip" action="doupdatetrip">
            <table>
                <tbody>
                    <tr>
                        <td><form:input path="tripid" value="${oldtrip.tripid}"/>Trip ID</td>
                        <td><form:input path="origin" value="${oldtrip.origin}"/>Origin</td>
                        <td><form:input path="destination" value="${oldtrip.destination}"/>Destination</td>
                        <td><form:input path="date" value="${oldtrip.date}"/>Date</td>
                        <td><form:input path="totalseats" value="${oldtrip.totalseats}"/>Total Seats</td>
                        <td><form:input path="availableseats" value="${oldtrip.availableseats}"/>Available Seats</td>
                    </tr>
                </tbody>
                <td><input type="submit" value="Update Trip"/></td>
            </table>
        </form:form>
    </body>
</html>
