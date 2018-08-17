<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jsp.agro.Helper"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
      Connection connection=(Connection)application.getAttribute("DB");
      
      String ferticode=request.getParameter("ferticode");
      String name=request.getParameter("name");
      int landCode=Integer.valueOf(request.getParameter("landCode"));
      
      int cropCode=Helper.getCropCode(connection, landCode);
      PreparedStatement ps=connection.prepareStatement("insert into fertilizer values(?,?,?)");
      ps.setString(1, ferticode);
      ps.setString(2, name);
      ps.setInt(3, cropCode);
      
      int a=ps.executeUpdate();
      
      if(a>0)
      {
          String msg="Your Fertilizer has been Registered With Us";
          response.sendRedirect("MessagePage.jsp?MSG="+msg);
      }
    }
    catch(Exception e)
    {
        response.sendError(501, e.getMessage());
    }
%>