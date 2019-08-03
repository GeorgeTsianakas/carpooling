<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Send Message</title>
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
        <link href="/carpooling/css/sendmessage.css" rel="stylesheet" type="text/css"> 
    </head>
    <body>
        <%@include file="header.jsp" %> 
        <div class="containermenu">
            <img src="/carpooling/img/sendemail.jpg" style="width:100%" alt="Computer Hope">
            <div class="centered">
                <div>
                    <h1 id="myTitle">Send E-mail</h1>
                </div>
                <div id="mybuttons1">
                    <h2>
                        <form method="POST" action="${pageContext.request.contextPath}/sendemail">
                            <input name="subject" id="mail" type="text" class=" button button2" placeholder="Enter your email">
                            <textarea name="textarea" id="text" type=text rows="10" cols="50" class=" button button2" placeholder="Write here your message"></textarea><br>
                            <button type="submit" id="button" class="button submit_button1" >Send</button>
                        </form>
                    </h2>
                </div>
            </div>
        </div>
        <p>
            <%@include file="footer.html" %>  
        </p>
        <script>
            $(document).ready(() => {
                $('#button').click((event) => {
                    let one = $('#mail').val();
                    let two = $('#text').val();

                    if (!(one && two)) {
                        event.preventDefault();
                    }
                });
            });
        </script>
    </body>                  
</html>
