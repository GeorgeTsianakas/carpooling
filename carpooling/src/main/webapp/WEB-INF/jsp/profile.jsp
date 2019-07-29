<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account Profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js">
        </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="css/profile.css" rel="stylesheet">

    </head>
    <body>
        <%@include file="header.jsp" %>


        <div class="ex2 w3-row-padding w3-container w3-padding">
            <table  class="w3-table w3-twothird w3-padding float_center  ">
                <tr class="w3-padding">
                    <td rowspan="2">  <img src="img/default-profile-300x300.png"></td>
                    <td colspan="2">
                        <h2> <c:out value="${sessionScope.loggedinuser.firstname}"/>  <c:out value="${sessionScope.loggedinuser.lastname}"/></h2>
                        My rating: <input type="hidden" id="rating" value="${sessionScope.loggedinuser.rating}" />
                        <input type="hidden" id="ratedby" value="${sessionScope.loggedinuser.ratedby}" /> 
                        <span id="star1" class="fa fa-star"></span>
                        <span id="star2" class="fa fa-star"></span>
                        <span id="star3" class="fa fa-star"></span>
                        <span id="star4" class="fa fa-star"></span>
                        <span id="star5" class="fa fa-star"></span>
                        <span id="num"></span> 
                        <h5> Birthdate: <c:out value="${sessionScope.loggedinuser.birthdate}"/> </h5>
                    </td>

                </tr>
                <tr class="w3-padding">
                    <td  colspan="2"> 
                        <h5>Cellphone: <c:out value="${sessionScope.loggedinuser.cellphone}"/> </h5>

                    </td>
                </tr>
                <tr class="w3-padding">
<!--                    <td> 
                        <a href="#">Upload Photo</a> 
                    </td>-->
                    <td  colspan="2"> 
                        <h5>E-mail: <c:out value="${sessionScope.loggedinuser.email}"/> </h5>
                    </td>
                </tr>
            </table>
        </div>


        <p> 
            <%@include file="footer.html" %>
        </p>

        <script>
            $(document).ready(function () {

                let ratedby = $('#ratedby').val();
                $("#num").html("(" + ratedby + ")");

                if (ratedby == 0) {

                } else {

                    var rating = $('#rating').val() / ratedby;
//    console.log(rating);
                    rating = rating.toPrecision(1);


                    if (rating >= 1) {

                        $('#star1').addClass('checked');
                    }
                    if (rating >= 2) {
                        $('#star2').addClass('checked');
                    }
                    if (rating >= 3) {
                        $('#star3').addClass('checked');
                    }
                    if (rating >= 4) {
                        $('#star4').addClass('checked');
                    }

                    if (rating >= 5) {
                        $('#star5').addClass('checked');
                    }

                }
            });
        </script>
    </body>
</html>