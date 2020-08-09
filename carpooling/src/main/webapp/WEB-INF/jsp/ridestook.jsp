<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="/carpooling/css/profile.css" rel="stylesheet">
    <!--<script src="/carpooling/js/ridestook.js" ></script>-->
</head>
<body>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@include file="header.jsp" %>
<c:forEach var="trip" items="${thetakenktriplist}">
    <div class="ex2 w3-row-padding w3-container w3-padding">
        <table class="w3-table w3-twothird w3-padding float_center  ">
            <tr class="w3-padding">
                <td colspan="2">
                    <h3><c:out value="${trip.driverid.firstname}"/> <c:out value="${trip.driverid.lastname}"/></h3>
                <td rowspan="1"> Available Seats:
                    <h3><c:out value="${trip.availableseats}"/></h3>
                </td>
            </tr>
            <tr class="w3-padding">
                <td colspan="2">From <h3><c:out value="${trip.origin}"/></h3> To <h3><c:out
                        value="${trip.destination}"/></h3> At <h3><c:out value="${trip.date}"/></h3></td>
                <td rowspan="1">Cost:
                    <h3><c:out value="${trip.costperseat}"/> &euro;</h3>
                    Info
                    <h3><c:out value="${trip.info}"/></h3>
                </td>
            </tr>
            <tr class="w3-padding">
                <td rowspan="1">
                    <h3>Rate</h3>
                    <div>
                        <form action="${path}/rate" method="post">
                            <input class="rating" type="hidden" name="rating"/>
                            <input type="hidden" name="driver" value="${trip.driverid.userid}"/>
                            <button type="submit">
                                <span id="star1" class="fa fa-star"></span>
                                <span id="star2" class="fa fa-star"></span>
                                <span id="star3" class="fa fa-star"></span>
                                <span id="star4" class="fa fa-star"></span>
                                <span id="star5" class="fa fa-star"></span>
                                <span class="res"></span>
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
<script>
    $(document).ready(function () {
        $(".fa").hover(function () {
            $(this).addClass('picked');
            $(this).prevAll('.fa').addClass('picked');
        }, function () {
            $(this).removeClass('picked');
            $(this).prevAll('.fa').removeClass('picked');
        });
        $('.fa').click(function (e) {
            let t = $(this);
            t.addClass('checked');
            t.prevAll('.fa').addClass("checked");
            let x = $('.checked').length;
            t.parent().children('.res').html(x + "!");
            t.parent().parent().children('.rating').val(x);
        });
    });
</script>
</body>
</html>