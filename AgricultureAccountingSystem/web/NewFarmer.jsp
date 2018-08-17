

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Farmer:Registration</title>
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
          
            #registration
            {
                height: 460px;
                width: 400px;
                margin-left: 30px;
                margin-top: -10px;
                box-shadow: 5px 5px 5px 0px green; 
               
                
            }
            #rimages
          {
              height: 84px;
              width: 749px;
              margin-top: 18px;
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
                <img src="images/Farmer.jpg" height="250" width="750">
            </div>
            <div id="menubar">
                <ul>
                    <br/>
                    <li><a href="index.jsp" title="Home">Home</a></li>
                    <li><a href="LogIn.jsp" title="LogIn">LogIn</a></li>
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
                            <li><a href="NewFarmer.jsp">Farmer</a></li><br/>
                            <li><a href="CropForm.jsp">Crop</a></li><br/>
                            <li><a href="#">Cultivation</a></li><br/>
                            <li><a href="#">Harvest</a></li><br/>
                            <li><a href="#">Irrigation</a></li><br/>
                            <li><a href="#">Fertilizer</a></li><br/>
                            <li><a href="#">Fertilizer Detail</a></li><br/>
                            <li><a href="#">Daybook</a></li><br/>
                            <li><a href="#">Labor</a></li><br/>
                            <li><a href="LandForm.jsp">Land</a></li><br/>
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
                <div id="registration">
                    <br/>
                    <font color="green" size="4px">
                    
                    <B>
                        <form action="CreateFarmerPage.jsp" method="Post">
                        <center><font color="green"><h2>New Farmer Registration Form</h2></font></center>
                    &nbsp;&nbsp;&nbsp;  Farmer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text"  placeholder="Farmer Name"name="name" size="20px"/><br/><br/>
                  &nbsp;&nbsp;&nbsp;    Phone: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="7398474709" name="mobile" size="20px"/><br/><br/>
                  &nbsp;  &nbsp;  Address: &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="text" name="address" size="20px" placeholder="Address"/><br/><br/>
                 
                  &nbsp;&nbsp;&nbsp;&nbsp;Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass" size="20px" placeholder="Enter your Password"/><br/><br/>
               &nbsp;&nbsp;&nbsp;  Confirm Password: <input type="password" name="cpass" size="20px" placeholder="Re-Enter your Password"/><br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<input type="reset" value="Reset"/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Create" />
                 </form>
                    </B>
                    
                    </font>
                  
                </div>
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
