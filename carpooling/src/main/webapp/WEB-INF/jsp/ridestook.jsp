<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Available Trips</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="/carpooling/css/ridestook.css" rel="stylesheet">
        <script src="/carpooling/js/ridestook.js" ></script>
    </head>
    <body>
        <c:set var="path" value="${pageContext.request.contextPath}"></c:set>
        <%@include file="header.jsp" %>
        <c:forEach var = "trip" items="${thetakenktriplist}">
            <div class="ex2 w3-row-padding w3-container w3-padding">
                <table  class="w3-table w3-twothird w3-padding float_center  ">
                    <tr class="w3-padding">
                        <td colspan="2">
                            <h3> <c:out value="${trip.driverid.firstname}"/>  <c:out value="${trip.driverid.lastname}"/></h3>
                        <td   rowspan="1"> Available Seats:
                            <h4>   <c:out value="${trip.availableseats}"/> </h4>
                        </td>
                    </tr>
                    <tr class="w3-padding">
                        <td  colspan="2">From <h3> <c:out value="${trip.origin}"/> </h3> To <h3><c:out value="${trip.destination}"/> </h3> At <h3> <c:out value="${trip.date}"/> </h3></td>
                        <td rowspan="1">Cost:
                            <h4>  <c:out value="${trip.costperseat}"/> &euro;</h4>
                            <h4>Info</h4>
                            <p> <c:out value="${trip.info}"/> </p>
                        </td>
                    </tr>
                    <tr class="w3-padding">
                        <td rowspan="1">
                            <h3>Rate</h3>
                            <div>
                                <form action="${path}/rate" method="post">
                                    <input id="rating" type="hidden" name="rating" /> 
                                    <input type="hidden" name="driver" value="${trip.driverid.userid}"/>
                                    <button type="submit">
                                        <span id="star1" class="fa fa-star"></span>
                                        <span id="star2" class="fa fa-star"></span>
                                        <span id="star3" class="fa fa-star"></span>
                                        <span id="star4" class="fa fa-star"></span>
                                        <span id="star5" class="fa fa-star"></span>
                                        <span id="res"></span>
                                    </button>
                                </form>
                            </div> 
                        </td>
                    </tr>
                </table>
            </div>
        </c:forEach>
        <p>
            <%@include file="footer.html" %>
        </p>

    </body>
</html>