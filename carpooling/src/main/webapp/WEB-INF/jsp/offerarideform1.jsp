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
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
        <link href="css/offeraride.css" rel="stylesheet" type="text/css"> 
        <script src="js/offeraride_melatlng.js" ></script>

    </head>

    <body>
        <%@include file="header.jsp" %> 

        <img src="img/04_offeraride.jpg" style="width:100%; height:1200px ;" class="containermenu" alt="Computer Hope">
        <div class="container-fluid mainmenu-size">

            <div class="row" >
                <div class="col-sm-4  col-md-5 col-lg-1"></div>
                <div class="col-sm-8 col-md-7 col-lg-5 inputs-location">

                    <springForm:form method="Post" modelAttribute="newtrip" action ="${pageContext.request.contextPath}/doinserttrip" >

                        <div id="pac-container" class="row">
                            <div class="col-12">
                                <h2 id="myTitle">Offer a Ride</h2>
                                <springForm:input path="origin" id="pac-input-from" type="text" class=" button4 button3" placeholder="Riding From"/>
                                <springForm:errors path="origin" />
                                <input type="hidden" id="latlngorigin" />  
                                <springForm:hidden path="originlatitude"  id="latorigin" />  
                                <springForm:hidden path="originlongtitude" id="lngorigin" />
                                <springForm:input type="hidden" path="driverid" value="${sessionScope.loggedinuser.userid}"/>  
                            </div>
                        </div>

                        <div id="pac-container" class="row">
                            <div class="col-12">
                                <springForm:input path="destination" id="pac-input-to" type="text" class=" button4 button3" placeholder="Riding To"/>
                                <springForm:errors path="destination" />
                                <input type="hidden" id="latlngdestination"/>
                                <springForm:hidden path="destinationlatitude"  id="latdestination" /> 
                                <springForm:hidden path="destinationlongtitude" id="lngdestination" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <input type="datetime-local" id="dtlocal" class="button4 button3" placeholder="Enter Date"/>

                                <input type="hidden" id="year" name="year"/>
                                <input type="hidden" id="month" name="month" />
                                <input type="hidden" id="day" name ="day" />
                                <input type="hidden" id="hour" name="hour" />
                                <input type="hidden" id="mins" name="mins" />
                                <springForm:input path="totalseats" type="hidden" class=" button5 button3" name="quantity" value="4" />

                            </div>
                        </div>
                        <div class=" row">
                            <div class="col-8"><span class="input-text"> Enter the number of seats</span></div>
                            <div class="col-4"> 
                                <springForm:input path="availableseats" type="number" class=" button5 button3" name="quantity" min="1" max="4"/>
                                <springForm:errors path="availableseats" />
                            </div>
                        </div>
                        <div class=" row">
                            <div class="col-8"><span class="input-text"> Enter the cost per seat (&euro;)</span></div>
                            <div class="col-4"> <springForm:input path="costperseat" type="number" class=" button5 button3"/>
                                <springForm:errors path="costperseat"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <springForm:textarea path="info" rows="3" cols="50" class=" button6 button3" placeholder="Add some information about your trip"/>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">

                                <button type="submit" id="subbutton" class="button5 submit_button2" >Submit</button>
                            </div>

                        </div>

                    </springForm:form>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 map-padding">
                    <div id="map"></div>
                    <div id="infowindow-content">
                        <span id="place-name" class="title"></span><br>
                        <span id="place-address"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row footer">
            <div class="col-12">
                <%@include file="footer.html" %>  

            </div> 
        </div> 
        <script
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCAtNoXw0xit4u4OEX4cay9a9TEI9Q2htU&libraries=places&callback=initMap"
        async defer></script>  

        <script>
            $(document).ready(function () {
                $('#subbutton').on('click', function (event) {
                    let x = $('#dtlocal').val().split('T');
                    let d = x[0];
                    let t = x[1];
                    let s = d.split('-');
                    let y = t.split(':');
                    $('#year').val(s[0]);
                    $('#month').val(s[1]);
                    $('#day').val(s[2]);
                    $('#hour').val(y[0]);
                    $('#mins').val(y[1]);

                });
            });

        </script>

    </body>                  
</html>     