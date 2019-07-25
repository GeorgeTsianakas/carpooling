<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Select A Ride</title>
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
       <script src="https://code.jquery.com/jquery-3.4.0.min.js">   </script>
       <link href="css/findaride.css" rel="stylesheet" type="text/css">
       <script src="js/findaride_melatlng.js" ></script>
   </head>
   <body>
<%@include file="header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<div class="containermenu first">
     <img src="img/findaride.jpg" style="width:100%" alt="Computer Hope">
     <div class="centered">
       <div>
         <h1 id="myTitle">Find a Ride</h1>
       </div>
      <div id="mybuttons1">
           <form method="POST" action="${path}/find">
           <input id="pac-input-from" type="text" class="button button2" placeholder="Leaving From">
           <input type="hidden" id="latlngorigin" />
            <input type="hidden" id="latorigin" name="latorigin"/>
             <input type="hidden" id="lngorigin" name="lngorigin"/>
           <input id="pac-input-to" type="text" class="button button2" placeholder="Going To">
            <input type="hidden" id="latlngdestination"/>
             <input type="hidden" id="latdestination" name="latdestination"/>
              <input type="hidden" id="lngdestination" name="lngdestination"/>
           <input type="datetime" name="date" class="button button2">
           
           <button type="submit" class="button5 submit_button1">Submit</button>
           </form>
       </div>
       <div id="map"></div>
     </div>
   </div>
           <p>
           <%@include file="footer.html" %>
            <!-- footer-->
           </p>
       <script
       src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCAtNoXw0xit4u4OEX4cay9a9TEI9Q2htU&libraries=places&callback=initMap"
       async defer></script>
   </body>
</html>