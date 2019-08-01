<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donate!</title>
        <style> 

            html{
                background-color: lightgrey;

            }

            input{
                width:80%;
                padding-top: 20px;
                padding-left:18px; 
            }
        </style>
    </head>
    <body>
        <div class="containermenu w3-display-middle ">  
            <div class="w3-button w3-large w3-round-large w3-padding w3-margin-right w3-blue w3-hover-light-blue w3-left ">
                <center><a href="${pageContext.request.contextPath}/selectaride">Go back to Main Page</a></center>
            </div>
            <div id="mybuttons1" >
                <form class="w3-padding" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_blank">
                    <input type="hidden" name="cmd" value="_s-xclick" />
                    <input type="hidden" name="hosted_button_id" value="ZWY6DWEY77XQ6" />
                    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
                    <img alt="" border="0" src="https://www.sandbox.paypal.com/en_GR/i/scr/pixel.gif" width="1" height="1" />
                </form>
            </div>
        </div> 
    </body>
</html>