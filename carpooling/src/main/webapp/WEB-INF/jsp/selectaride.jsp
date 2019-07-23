<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link href="css/selectaride.css" rel="stylesheet" type="text/css"> 
        <script src="js/selectaride.js" ></script>
       
    </head>
    
    <body>
           
 <%@include file="header.jsp" %> 

        <div class="containermenu">
           
                    <img src="img/findaride.jpg"  style="width:100%" alt="Compttttuter Hope" >
                        <div class="centered">


                            <div> 
                                 <h1 id="myTitle">Find a Ride</h1>
                            </div>
                            
                          <div id="mybuttons1">

                                <button type=form class=" button button2" onclick="location.href='findaride'"> Leaving From </button><br>
                                <button type=form class=" button button2" onclick="location.href='findaride'"> Going to </button><br>
                                <button type="date" class=" button button2" onclick="location.href='findaride'"> dd/mm/yyyy</button><br>

                         </div>

                        </div>
                    
                    </div>
                            
             <p>

                <div class="containermenu">

                        <table>
                            <tr>
                                <td id="photo_table" >
                                        <img src="img/offeraride.jpg"  style="width:100%" alt="Cooooooomputer Hope" >
                                </td >
                               
                                    <td  class="containermenu offeraride_td centered_table_td">
                                    <div> 
                                            <h2 id="myTitle">Offer a Ride</h6>
                                       </div>
                                           <button type=form class=" button4 button3" onclick="location.href='offeraride'"> Riding From </button><br>
                                           <button type=form class=" button4 button3" onclick="location.href='offeraride'" > Riding to </button><br>
                                           <button type="date" class=" button4 button3" onclick="location.href='offeraride'" > dd/mm/yyyy</button><br>
                                     
                               </td>
                            </tr>

                        </table>
                </div>
       
            </p>
            <p>
            <%@include file="footer.html" %>  
            <!--footer-->
            </p>
                  
    </body>                  
</html>
  