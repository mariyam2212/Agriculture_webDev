<%
    if(session.getAttribute("FC")==null)
    {
        response.sendRedirect("LogIn.jsp");
    }
%>