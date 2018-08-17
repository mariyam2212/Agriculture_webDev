<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
    String landCode=request.getParameter("landCode");
    String area=request.getParameter("area");
    String farmerCode=(String)session.getAttribute("FC");
    
    Connection connection=(Connection)application.getAttribute("DB");
    PreparedStatement ps=connection.prepareStatement("insert into land values(?,?,?)");
    ps.setString(1, landCode);
    ps.setString(2, area);
    ps.setString(3, farmerCode);
    int a=ps.executeUpdate();
    
       if(a>0)
         {
             String msg="Your Land has been Registered With Us";
            response.sendRedirect("MessagePage.jsp?MSG="+msg);
         }
       }
    catch(Exception e)
    {
        response.sendError(501,e.getMessage());
    }
%>