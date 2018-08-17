<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jsp.agro.Helper"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
      Connection connection=(Connection)application.getAttribute("DB");
      String sowcode=request.getParameter("sowcode");
      String labcost=request.getParameter("labcost");
      String seedcost=request.getParameter("seedcost");
      int landCode=Integer.valueOf(request.getParameter("landCode"));
      
      int cropCode=Helper.getCropCode(connection, landCode);
      PreparedStatement ps=connection.prepareStatement("insert into sowing values(?,?,?,?)");
      ps.setString(1, sowcode);
      ps.setString(2, labcost);
      ps.setString(3, seedcost);
      ps.setInt(4, cropCode);
      
      int a=ps.executeUpdate();
      if(a>0)
      {
          String msg="Your Sowing Entry Has been Registered With Us";
          response.sendRedirect("MessagePage.jsp?MSG="+msg);
      }
    }
    catch(Exception e)
    {
        response.sendError(501, e.getMessage());
    }
%>