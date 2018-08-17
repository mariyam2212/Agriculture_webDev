
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Home Page</title>
        <link href="CSS/GenralStyle.css" rel="stylesheet" type="text/css">
        <style>
            #image
            {
                height: 250px;
                width: 750px;
               
            }
            #menubar
            {
                height: 70px;
                width: 750px;
               margin-top: -16px;
                background-image: url(images/menu.gif);
            }
          #Land
          {
              height: 300px;
              width: 350px;
              margin-left: 30px;
              box-shadow: 5px 5px 5px 0px green;
          }
          #welcome
          {
              height: 40px;
              width: 450px;
              border: 1px solid;
          }
          
          #rimages
          {
              
              height: 84px;
              width: 748px;
              margin-top: 168px;
              margin-left: -250px;
            
             
          }
           #link
            {
                height: 40px;
                line-height: 40px;
                width: 210px;
                margin-top: -20px;
                background-image: url(images/title.png);
            }
            #back
            {
                height: 260px;
                width: 210px;
                background-image: url(images/back.png);
            }
          
            #limage
            {
                height: 230px;
                width:249px;
             margin-top: 18px;
                background-image: url(images/front.gif);
            }
            #footer
            {
                height: 90px;
                width: 750px;
                 margin-top: 12px;
                 background-image: url(images/footer.gif);
            }
        </style>
     </head>
    <body style="background: url(images/back_all.gif)">
     <div id="outer">
        <div id="main" >
            <div id="image" >
                <img src="images/slide-02.jpg" height="250" width="750">
            </div>
            <div id="menubar">
                <ul>
                    <br/>
                    <li><a href="index.jsp" title="Home">Home</a></li>
                    <li><a href="Logout.jsp" title="Log Out...<%out.println(session.getAttribute("FN"));%>">Log Out</a></li>
                    <li><a href="#"title="Accounting">Accounting</a></li>
                    <li><a href="#"title="About Us">About Us</a></li>
                    <li><a href="#"title="Contact Us">Contact Us</a></li>
                </ul> 
            </div>
            <div id="left">
                <div id="module">
                    <div id="link" >
                        <center>
                            <font color="white"> <h3>Links</h3></font>
                        </center>
                    </div>
                    <div id="back">
                        <font size="4px">
                        <ul>                            
                            <li><a href="CropForm.jsp">Crop</a></li><br/>
                            <li><a href="CultivationForm.jsp">Cultivation</a></li><br/>
                            <li><a href="HarvestForm.jsp">Harvest</a></li><br/>
                            <li><a href="IrrigationForm.jsp">Irrigation</a></li><br/>
                            <li><a href="FertilizerForm.jsp">Fertilizer</a></li><br/>
                            <li><a href="FertilizerDetailForm.jsp">Fertilizer Detail</a></li><br/>
                            <li><a href="DayBookForm.jsp">Daybook</a></li><br/>
                            <li><a href="LaborForm.jsp">Labor</a></li><br/>
                            <li><a href="LandForm.jsp">Land</a></li><br/>
                            <li><a href="SowingForm.jsp">Sowing</a></li>
                        </ul>
                     </font>
                    </div>
                </div>
                <div id="limage"></div>
            </div>
            <div id="right">
                <center>
                    <font color="green"><h1>Agriculture Accounting</h1></font>
                </center>
                <div id="Land">
                    <br/>
                    <font color="green" size="4px">
                    <B>
                        Welcome : <%out.println(session.getAttribute("FN"));%>
                    </B>
                    </font>
                        </div>
                    <div id="welcome"></div>
                    
                    <div id="rimages">
                        <img src="images/foot.jpg" height="84" width="748">
                    </div>
                 </div>
              </div>
            <div id="footer">
                <center>
                    <font size="2px">
                   <br/> <p>Copyright Information Goes Here. All Rights Reserved<br/>
                Designed by <a href=" " title="Sandeep Kumar">Sandeep Kumar</a></p>
                </font>
                </center>
            </div>
            </div>
    </body>
</html>
