  
<%@page import="com.jsp.agro.Helper"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crop Form</title>
        <link href="CSS/GenralStyle.css" rel="stylesheet" type="text/css">
        <style>
            #image
            {
                height: 250px;
                width: 750px;
                background-image: url(images/1.jpg);
            }
            #menubar
            {
                height: 70px;
                width: 750px;
               margin-top: -16px;
               
                background-image: url(images/menu.gif);
                
            }
          
            
            
          #Crop
          {
              height: 400px;
              width: 400px;
              margin-left: 30px;
              box-shadow: 5px 5px 5px 0px green; 
              
              
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
                width:240px;
                
                margin-top: 40px;
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
                            
                            <li><a href="CultivationForm.jsp">Cultivation</a></li><br/>
                            <li><a href="HarvestForm.jsp">Harvest</a></li><br/>
                            <li><a href="IrrigationForm.jsp">Irrigation</a></li><br/>
                            <li><a href="FertilizerForm.jsp">Fertilizer</a></li><br/>
                            <li><a href="FertilizerDetailForm.jsp">Fertilizer Detail</a></li><br/>
                            <li><a href="DayBookForm.jsp">Daybook</a></li><br/>
                            <li><a href="LaborForm.jsp">Labour</a></li><br/>
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
                    <font color="green">    <h1>Agriculture Accounting</h1></font>
                </center>
                <div id="Crop">
                    <br/>
                    <font color="green" size="4px">
                    
                    <B>
                        
                        <form action="SaveCropPage.jsp" method="Post">
                        <center><font color="green"><h2>Crop Form Entry</h2></font></center>
                    &nbsp;&nbsp;&nbsp;  Crop Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <input type="text"  placeholder="Crop Code" name="cropCode" size="20px" value="<%out.println(new Random().nextInt(1000));%>"/><br/><br/>
                  &nbsp;&nbsp;&nbsp;    Name: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="Name" name="name" size="20px"/><br/><br/>
                  
                   
                  &nbsp;&nbsp;&nbsp;&nbsp;Land Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <select name="landCode">
                      <%
                    Connection connection=(Connection)application.getAttribute("DB");
                    out.println(Helper.getComboBox(connection, "select landcode,area from land where farmercode="+session.getAttribute("FC")));
                      %>
                  </select>
                  <br/><br/>
               
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;<input type="reset" value="Reset"/>
                 <input type="submit" value="Create" />
                        </form>
                    </B>
                    </font>
                  
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
