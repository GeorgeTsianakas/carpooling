<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Sign Up</title>
    </head>

    <body>
        <div class="w3-container">
            <springForm:form method="post" modelAttribute="user"     
                             action="${pageContext.request.contextPath}/register/docreateaccount"
                             cssClass="w3-display-middle w3-padding w3-light-gray w3-round-large">
                <div>
                    <springForm:input id="input1" path="email" type="email"
                                      cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter email" />
                    <springForm:errors path="email" />
                </div>
                <div>
                    <springForm:input id="input2" path="username" type="text"
                                      cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter username" />
                    <springForm:errors path="username" />
                </div>
                <div>
                    <springForm:input  path="password" type="password" id="pass1"
                                       cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter password" />
                    <springForm:errors path="password" />
                </div>
                <div>
                    <input type="password" class="w3-input w3-padding w3-margin-top w3-round-large" id="pass2"
                           placeholder="Confirm password" />
                    <div class="error w3-text-red w3-center" id="confirm-error"></div>
                </div>
                <div>
                    <springForm:input id="input4" path="firstname" type="text"
                                      cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter name" />
                    <springForm:errors path="firstname" />
                </div>
                <div>
                    <springForm:input id="input5" path="lastname" type="text"
                                      cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter last name" />
                    <springForm:errors path="lastname" />
                </div>
                <div>
                    <springForm:input type="date" path="birthdate" id="birthdate"
                                      cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter birthdate" />
                    <springForm:errors path="birthdate" cssClass="w3-hide"/>
                </div>
                <div>
                    <springForm:input id="input7" type="text" path="cellphone"
                                      cssClass="w3-input w3-padding w3-margin-top w3-round-large" placeholder="Enter cellphone" />
                    <springForm:errors path="cellphone" />
                </div>
                <div>
                    <button type="submit" name="register" id="submit_button"
                            class="w3-button w3-blue w3-round-large w3-hover-light-blue w3-margin-top w3-block w3-padding">Sign
                        up </button>
                    <p class="w3-center">By clicking the button you agree to the terms of
                        service</p>
                </div>
            </springForm:form>
            <div id="msg" class="w3-text-red w3-display-topmiddle"></div>
        </div>
        <script>
            $(document).ready(function () {
                $("#pass2").keyup(function () {
                    if ($("#pass1").val() != $("#pass2").val()) {
                        $("#confirm-error").html("Passwords do not match !");
                        $("#pass2").addClass("w3-red");
                    } else {
                        $("#pass2")
                                .removeClass("w3-red")
                                .addClass("w3-green");
                        $('#confirm-error')
                                .html("Matching passwords !")
                                .removeClass("w3-text-red")
                                .addClass("w3-text-green");
                    }
                });
                $('#submit_button').on('click', function (event) {
                    let one = $('#input1').val();
                    let two = $('#input2').val();
                    let three = $('#pass1').val();
                    let four = $('#input4').val();
                    let five = $('#input5').val();
                    let six = $('#birthdate').val();
                    let seven = $('#input7').val();
                    if (!(one && two && three && four && five && six && seven)) {
                        event.preventDefault();
                        $('#msg').html("Please fill in all fields");
                    }
                });
                $('#birthdate').datepicker({
                    format: 'YYYY-MM-dd'
                });
            });
        </script>
    </body>

</html>