<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donate!</title>
    </head>
    <body>

        <div>
            <center><a href="${pageContext.request.contextPath}">Go back to Home Page</a></center>
        </div>
        <div style="width:150px; margin:0 auto; " >

            <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_blank">
                <input type="hidden" name="cmd" value="_s-xclick" />
                <input type="hidden" name="hosted_button_id" value="ZWY6DWEY77XQ6" />
                <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
                <img alt="" border="0" src="https://www.sandbox.paypal.com/en_GR/i/scr/pixel.gif" width="1" height="1" />
            </form>
        </div>

    </body>
</html>
