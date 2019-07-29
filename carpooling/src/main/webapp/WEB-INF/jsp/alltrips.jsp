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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="css/alltrips.css" rel="stylesheet">

    </head>
    <body>
        <%@include file="header.jsp" %>
        <c:set var="path" value="${pageContext.request.contextPath}"></c:set>

        <c:forEach var = "trip" items="${trips}">
            
            <div class="ex2 w3-row-padding w3-container w3-padding">
                
                <table  class="w3-table w3-twothird w3-padding float_center  ">
                    <tr class="w3-padding">
                        <td rowspan="2">  <img src="img/default-profile-300x300.png"></td>
                        <td colspan="2">
                            <c:out value="${trip.driverid.username}"></c:out>  <!-- drivers username -->
                            <td   rowspan="1"> Available Seats:
                            <c:out value="${trip.availableseats}"/>
                        </td>
                    </tr>
                    <tr class="w3-padding">
                        <td  colspan="2">From  <c:out value="${trip.origin}"/> To <c:out value="${trip.destination}"/> At <c:out value="${trip.date}"/></td>
                        <td rowspan="1">Cost($):
                            <c:out value="${trip.costperseat}"/>
                        </td>
                    </tr>
                    <tr class="w3-padding">
                        <td> <a href="viewprofile">See profile</a> </td>
                        <td  colspan="2" class="stars"> User rating:
                            <input type="hidden" class="rating"  value="${trip.driverid.rating}" /> 
                            <input type="hidden" class="ratedby"  value="${trip.driverid.ratedby}" /> 
                            <span id="star1" class="fa fa-star star1"></span>
                            <span id="star2" class="fa fa-star star2"></span>
                            <span id="star3" class="fa fa-star star3"></span>
                            <span id="star4" class="fa fa-star star4"></span>
                            <span id="star5" class="fa fa-star star5"></span>
                            <span>(${trip.driverid.ratedby})</span>
                        </td>  <td rowspan="1">
                            <a href="${path}/dotaketrip/${trip.tripid}" class="btn btn-primary" id="myBtn2">Take it!</a>
                        </td>
                    </tr>
                </table>
            </div>
        </c:forEach>
        <div class="row footer">
            <div class="col-12">
                <%@include file="footer.html" %>
            </div>
        </div>
        <script src="js/alltrips.js" ></script>
    </body>
</html>