 <%@page import="com.jsp.agro.Helper"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
        Connection connection=(Connection)application.getAttribute("DB");
        
        String code=request.getParameter("cultiCode").trim();
        String operation=request.getParameter("operation");
        String cost=request.getParameter("cost");
        String laborcost=request.getParameter("laborcost");
        int landCode=Integer.valueOf(request.getParameter("landCode"));
        
        int cropCode=Helper.getCropCode(connection, landCode);
        
        PreparedStatement ps=connection.prepareStatement("insert into cultivation values(?,?,?,?,?)");
        ps.setString(1, code);
        ps.setString(2, operation);
        ps.setString(3, cost);
        ps.setString(4, laborcost);
        ps.setInt(5, cropCode);
        
        int a=ps.executeUpdate();
        if(a>0)
        {
            String msg="Your Cultivation is Registered With Us";
            response.sendRedirect("MessagePage.jsp?MSG="+msg);
        }
    }
    catch(Exception e)
    {
        response.sendError(501,e.getMessage());
    }
%>