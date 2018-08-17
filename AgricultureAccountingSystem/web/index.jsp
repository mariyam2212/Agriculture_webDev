<%-- 
    Document   : index
    Created on : 3 Apr, 2017, 9:12:14 PM
    Author     : sandeep
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agriculture Accounting...</title>
        <link href="CSS/GenralStyle.css" rel="stylesheet" type="text/css">
        <style>
            #image
            {
                height: 250px;
                width: 750px;
                
                background-image: url(images/indon-agriculture.jpg);
            }
            #menubar
            {
                height: 70px;
                width: 750px;
               margin-top: -16px;
               
                background-image: url(images/menu.gif);
                
            }
           #menubar ul li ul
            {
                position:absolute;
                display: none;
                
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
               #rimages
          {
              height: 84px;
              width: 750px;
              margin-top: 99px;
              margin-left: -250px;
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
            <div id="image" ></div>
            <div id="menubar">
                <ul>
                    <br/>
                    <li><a href="index.jsp" title="Home">Home</a></li>
                    <li><a href="LogIn.jsp" title="LogIn">LogIn</a></li>
                    <li><a href="#"title="Accounting">Accounting</a>
                        <ul>
                            <li>Farmer</li>
                            <li><a href="#">Farmer</a></li>
                            <li><a href="#">Farmer</a></li>
                            <li><a href="#">Farmer</a></li>
                            <li><a href="#">Farmer</a></li>
                            <li><a href="#">Farmer</a></li>
                            <li><a href="#">Farmer</a></li>
                        </ul>
                    </li>
                    <li><a href="AboutUs.jsp"title="About Us">About Us</a></li>
                    <li><a href="ContactUs.jsp"title="Contact Us">Contact Us</a></li>
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
                            <li><a href="#">Farmer</a></li><br/>
                            <li><a href="#">Crop</a></li><br/>
                            <li><a href="#">Cultivation</a></li><br/>
                            <li><a href="#">Harvest</a></li><br/>
                            <li><a href="#">Irrigation</a></li><br/>
                            <li><a href="#">Fertilizer</a></li><br/>
                            <li><a href="#">Fertilizer Detail</a></li><br/>
                            <li><a href="#">Daybook</a></li><br/>
                            <li><a href="#">Labour</a></li><br/>
                            <li><a href="#">Land</a></li><br/>
                            <li><a href="#">Sowing</a></li>
                            
                        </ul>
                     
                        </font>
                    </div>
                    
                </div>
                <div id="limage"></div>
                
            </div>
            <div id="right">
                <center>
                    <font color="green">    <h1>Agriculture Accounting</h1></font>
                </center>
                <font size="4px">
                <p class="style1">Agriculture forms one third of Indian economy comprising of small,medium and large scale agricultural practices. Indian Agriculture is based on crop rotation policy such as, Agricultural Financial Year. i.e. Kharif, Rabi and Zaid(it also called Zayad) crop rotation.</p>
                <p class="style1">Now a days Accounting practices is implemented in business organization but agriculture accounting is is only practiced within large scale Agriculturist or Government owned Farms.</p>
                <p class="style1">The economic contribution of Agriculture to India's GDP is steadily declining with the country's broad-based economic growth. Still agriculture is demographically the broadest economic  sector and plays a significant role in the overall socio-economic fabric of India.</p>
                <p class="style1">Farm accounting on the other hand, is the extraction and analysis of the farm records for the purpose of determining the assets and financial situations of the farm at a particular period of time</p>
                </font>
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
