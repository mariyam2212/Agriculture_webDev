 <%@page import="java.util.Random"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jsp.agro.Validator"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agriculture Accounting</title>
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
          #login
          {
              
              height: 250px;
              width: 400px;
              
              margin-left: 78px;
              box-shadow: 5px 5px 5px 0px green; 
          }
        
           #rimage
           {
               height: 150px;
               width: 498px;
               
               margin-top: 60px;
               background-image: url(images/crop.gif);
           }
           
             #rimages
          {
              height: 84px;
              width: 749px;
              margin-top: 8px;
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
                <img src="images/contactus.JPG" height="250" width="750">
            </div>
            <div id="menubar">
                <ul>
                    <br/>
                    <li><a href="index.jsp" title="Home">Home</a></li>
                    <li><a href="LogIn.jsp" title="LogIn">LogIn</a></li>
                    <li><a href="#"title="Accounting">Accounting</a></li>
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
                            <li><a href="#">Labor</a></li><br/>
                            <li><a href="#">Land</a></li><br/>
                            <li><a href="#">Sowing</a></li>
                            
                        </ul>
                     
                        </font>
                    </div>
                    
                </div>
                <div id="limage">
                    
                </div>
                
            </div>
            <div id="right">
                <center>
                    <font color="green">    <h1>Agriculture Accounting</h1></font>
                </center>
                <div id="login">
                    
                    
                    <B>
                        <form action="#" method="post">
                    <center><font color="green"><h2>Contact Us</h2></font></center>
                    <hr>
                    <p class="style1">For any query and problem please send us a email on to <font color="blue"><u>sandeepky322@gmail.com.</u></font></p>
                        <center><font color="green"><h2>Key Contacts</h2></font> </center>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="blue">1) Sandeep Kumar - 7398474709</font></br></br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="blue">2) E-mail Us on - sandycool233@gmail.com</font>
                  </form>
                    </B>
                                                       
                </div>
                <div id="rimage"></div>
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
