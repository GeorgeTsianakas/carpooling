<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create A New Trip</title>
    </head>
    <body>
        <h1>Insert Trip</h1>
        <form:form method="POST" modelAttribute="trip" action="doinserttrip">
            <table>
                <tbody>
                    <tr>
                        <td><form:input path="tripid"/>enter Trip ID</td>
                    </tr>
                    <tr>
                        <td><form:input path="origin"/>enter Origin</td>
                    </tr>
                    <tr>
                        <td><form:input path="destination"/>enter Destination</td>
                    </tr>
                    <tr>
                        <td><form:input path="date"/>enter Date</td>
                    </tr>
                    <tr>
                        <td><form:input path="totalseats"/>enter Total Seats</td>
                    </tr>
                    <tr>
                        <td><form:input path="availableseats"/>enter Available Seats</td>
                    </tr>
                </tbody>
                <td><input type="submit" value="Insert Trip"/></td>
            </table>
        </form:form>
    </body>
</html>
