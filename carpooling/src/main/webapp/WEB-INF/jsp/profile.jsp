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
                    <td rowspan="2">  <c:choose>
                            <c:when test="${sessionScope.loggedinuser.photo == null}">
                                <img src="img/default-profile-300x300.png" alt="default user img">
                            </c:when>    
                            <c:otherwise>
                                <img src="data:image/jpeg;base64,${userImage}" alt="user img" />
                            </c:otherwise>
                        </c:choose>
                    </td>
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
                    </td>
                </tr>
                <tr class="w3-padding">
                    <td  colspan="2"> 
                        <h5>Mobile <c:out value="${sessionScope.loggedinuser.cellphone}"/> </h5>
                    </td>
                </tr>
                <tr class="w3-padding">
                    <td> 
                        <div class="w3-display-container">
                            <button id="modalbutton" class="w3-btn w3-left w3-tiny w3-round-large w3-blue">Upload Photo</button> 
                            <a href="${pageContext.request.contextPath}/updateuser" class="w3-btn w3-right w3-tiny w3-round-large w3-blue">Update Profile</a>
                        </div>
                    </td>
                    <td> 
                        <h5>E-mail: <c:out value="${sessionScope.loggedinuser.email}"/> </h5>
                    </td>
                    <td  colspan="2"> 
                    </td>
                </tr>
            </table>
        </div>
        <div id="modalform" class="w3-modal">
            <div class="w3-modal-content w3-animate-zoom w3-round-large">
                <div class="w3-container">
                    <span id="x" class="w3-button w3-display-topright w3-round-large w3-hover-red">&times;</span>
                    <form  class="w3-padding w3-margin" action="${pageContext.request.contextPath}/uploadphoto" method="POST" enctype="multipart/form-data">
                        <input type="file" name="photo"  class="w3-input w3-border w3-padding  w3-white w3-round-large " />
                        <button type="submit" class="w3-btn w3-blue w3-block w3-round-large">Upload</button>
                    </form>
                </div>
            </div>
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
                $('#modalbutton').click((event) => {
                    $('#modalform').show();
                });
                $('#x').click(function () {
                    $('#modalform').hide();
                });
            });
        </script>
    </body>
</html>