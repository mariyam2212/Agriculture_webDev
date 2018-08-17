<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
        String farmerCode=(String)session.getAttribute("FC");
        
        Connection connection=(Connection)application.getAttribute("DB");
        PreparedStatement ps=connection.prepareStatement("insert into daybook (PARTICULAR,DATE,DEBITAMOUNT,CREDITAMOUNT,FARMERCODE) values (?,?,?,?,?)");
        ps.setString(1, request.getParameter("particular").toUpperCase());
        ps.setString(2, request.getParameter("date"));
        ps.setDouble(3, Double.parseDouble(request.getParameter("DR").trim()));
        ps.setDouble(4, Double.parseDouble(request.getParameter("CR").trim()));        
        ps.setString(5, farmerCode);
        int a=ps.executeUpdate();
        if(a>0)
        {
            response.sendRedirect("DayBookForm.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e.toString());
    }
%>