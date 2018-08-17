<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jsp.agro.Helper"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
        Connection connection=(Connection)application.getAttribute("DB");
        
        String labcode=request.getParameter("labcode");
        String name=request.getParameter("name");
        String wage=request.getParameter("wage");
        String wday=request.getParameter("wday");
        int landCode=Integer.valueOf(request.getParameter("landCode"));
        
        int cropCode=Helper.getCropCode(connection, landCode);
        PreparedStatement ps=connection.prepareStatement("insert into labour values(?,?,?,?,?)");
        ps.setString(1, labcode);
        ps.setString(2, name);
        ps.setString(3, wage);
        ps.setString(4, wday);
        ps.setInt(5, cropCode);
        
        int a=ps.executeUpdate();
        if(a>0)
        {
            String msg="Your Labour Entry has Been Registered With Us";
            response.sendRedirect("MessagePage.jsp?MSG="+msg);
        }
    }
    catch(Exception e)
    {
      response.sendError(501, e.getMessage());
    }
%>