<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    
    try
    {
        String code=request.getParameter("cropCode");
        String name=request.getParameter("name");
        String landCode=request.getParameter("landCode");    

        Connection connection=(Connection)application.getAttribute("DB");
        PreparedStatement ps=connection.prepareStatement("insert into crop values(?,?,?,?,?)");
        ps.setString(1, code);
        ps.setString(2, name);
        ps.setInt(3, 0);
        ps.setInt(4, 0);
        ps.setString(5, landCode);

        int a=ps.executeUpdate();
        if(a>0)
        {
            String msg="Your Crop Has Been Registered With Us";
            response.sendRedirect("MessagePage.jsp?MSG="+msg);
        }
        }
        catch(Exception e)
        {
            response.sendError(501, e.getMessage());
        }
%>