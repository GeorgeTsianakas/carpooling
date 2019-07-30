<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<link href="css/header.css" rel="stylesheet" type="text/css"> 
<script src="js/header.js" ></script>
<div id="page-content-wrapper" >
    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" id="myHeader" >
        <a class="navbar-brand" href="${pageContext.request.contextPath}/selectaride">

            <h1 class="orbitron"> RoadTrippin' </h1>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">

                <c:if test="${sessionScope.loggedinuser.role eq 'admin'}">

                    <li class="nav-item active">

                        <a class="nav-link btn btn-link" id="nav_adminpage"  onclick="location.href = '${pageContext.request.contextPath}/admin'" > Admin Functions</a> 
                    </li>
                </c:if>

                <li class="nav-item active">
                    <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-link" id="nav_findaride"  onclick="location.href = '${pageContext.request.contextPath}/findaride'" >Find a Ride</a> 
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-link" id="nav_offeraride"  onclick="location.href = '${pageContext.request.contextPath}/offeraride'">Offer a Ride</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Account
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/profile">Profile</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/getridesoffered/${sessionScope.loggedinuser.userid}">Rides Offered</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/getridestaken/${sessionScope.loggedinuser.userid}">Rides Took</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/email/${sessionScope.loggedinuser.userid}">Send Message</a>
                        <div class="dropdown-divider"></div>
                        <a  class="dropdown-item btn btn-link" onclick="href = '${pageContext.request.contextPath}/logout'">Logout</a>    
                    </div>
                </li>
            </ul>
        </div>
    </nav>