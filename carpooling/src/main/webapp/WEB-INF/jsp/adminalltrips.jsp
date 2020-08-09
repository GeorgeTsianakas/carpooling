<%@page contentType="text/html" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RoadTripin Trips</title>
    <link href="fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Orbitron&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%@include file="header.jsp" %>
<div class="w3-container">

    <h2>
        <center>Carpooling Trips</center>
    </h2>
    <div class="w3-responsive">
        <table class="w3-table-all">
            <thead>
            <tr class="w3-light-grey">
                <th>Trip Date</th>
                <th>Origin</th>
                <th>Destination</th>
                <th>Driver's Username</th>
                <th>Trip Information</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="trip" items="${trips}">
                <tr>
                    <td>
                        <c:out value="${trip.date}"/>
                    </td>
                    <td>
                        <c:out value="${trip.origin}"/>
                    </td>
                    <td>
                        <c:out value="${trip.destination}"/>
                    </td>
                    <td>
                        <c:out value="${trip.driverid.username}"/>
                    </td>
                    <td>
                        <c:out value="${trip.info}"/>
                    </td>
                    <td>
                        <form method="GET" action="deletetrip/${trip.tripid}">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
            <br>
        </table>
        <br>
    </div>
</div>
<p>
    <%@include file="footer.html" %>
</p>
</body>
</html>