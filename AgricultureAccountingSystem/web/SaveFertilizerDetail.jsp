<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.jsp.agro.Helper"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
    Connection connection=(Connection)application.getAttribute("DB");
    
    String Decode=request.getParameter("Decode");
    String quantity=request.getParameter("quantity");
    String cost=request.getParameter("cost");
    int cropCode=Integer.valueOf(request.getParameter("cropCode"));
    
    
    PreparedStatement ps=connection.prepareStatement("insert into fertilizerdetail value(?,?,?,?)");
    ps.setString(1, Decode);
    ps.setString(2, quantity);
    ps.setString(3, cost);
    ps.setInt(4, ferticode);
    int a=ps.executeUpdate();
    
    if(a>0)
    {
        String msg="Your Entry For FertilizerDetail Has Been Registered With Us";
        response.sendRedirect("MessagePage.jsp?MSG="+msg);
    }
    }
    catch(Exception e)
    {
        response.sendError(501, e.getMessage());
    }
%>