<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jsp.agro.Helper"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
      Connection connection=(Connection)application.getAttribute("DB");
      
      String code=request.getParameter("code");
      String medium=request.getParameter("medium");
      String cost=request.getParameter("cost");
      int landCode=Integer.valueOf(request.getParameter("landCode"));
      
      int cropCode=Helper.getCropCode(connection, landCode);
     PreparedStatement ps=connection.prepareStatement("insert into irrigation values(?,?,?,?)");
     ps.setString(1, code);
     ps.setString(2, medium);
     ps.setString(3, cost);
     ps.setInt(4, cropCode);
     int a=ps.executeUpdate();
     
     if(a>0)
     {
         String msg="Your Irrigation Is Registered With Us";
         response.sendRedirect("MessagePage.jsp?MSG="+msg);
     }
    }
    catch(Exception e)
    {
        response.sendError(501, e.getMessage());
    }
%>