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
   <link href="css/alltrips.css" rel="stylesheet">
    <script src="js/alltrips.js" ></script>
   </head>
   <body>
        <%@include file="header.jsp" %>
        <c:forEach var = "trip" items="${trips}">
        <div class="ex2 w3-row-padding w3-container w3-padding">
   <table  class="w3-table w3-twothird w3-padding float_center  ">
       <tr class="w3-padding">
           <td rowspan="2">  <img src="img/default-profile-300x300.png"></td>
           <td colspan="2">
              xristina mpelitsou
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
           <td  colspan="2"> User rating: <input type="hidden" id="rating" value="29" /> <!-- "${user.rated}" -->
               <input type="hidden" id="ratedby" value="6" /> <!-- "${user.ratedBy}" -->
               <span id="star1" class="fa fa-star"></span>
               <span id="star2" class="fa fa-star"></span>
               <span id="star3" class="fa fa-star"></span>
               <span id="star4" class="fa fa-star"></span>
               <span id="star5" class="fa fa-star"></span>
               <span id="num"></span>
           </td>  <td rowspan="1">
               <a href="${pageContext.request.contextPath}/dotaketrip/${trip.tripid}" class="btn btn-primary" id="myBtn2">Take it!</a>
   </table>
</div>
       </c:forEach>
       <div class="row footer">
   <div class="col-12">
  <%@include file="footer.html" %>
     </div>
</div>
   </body>
</html>
