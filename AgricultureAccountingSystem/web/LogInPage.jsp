
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
                        <%
                            
                                String fc=request.getParameter("code");
                                String p=request.getParameter("password");
                                Connection connection=(Connection)application.getAttribute("DB");
                                try
                                {
                                   
                                    PreparedStatement ps=connection.prepareStatement("select * from farmer where farmercode=?");
                                    ps.setString(1, fc);
                                    
                                    ResultSet rs=ps.executeQuery();
                                    if(rs.next())
                                    {
                                       String pass=rs.getString(5);
                                       String Farmercode=rs.getString(1);
                                       if(Farmercode.equals(fc) )
                                    {
                                      if(pass.equals(p))
                                      {
                                            //out.println("You are enter");
                                        session.setAttribute("FC", fc);
                                        session.setAttribute("FN", rs.getString(2));
                                       response.sendRedirect("FarmerHomePage.jsp");
                                      }
                                      else
                                      {
                                          %>
                                          <script>
                                              window.alert("Password is not valid");
                                              window.setTimeout("history.go(-1)",0);
                                          </script>
                                          <%
                                      }
                                    }
                                    else
                                    {
                                        %>
                                        <script>
                                            window.alert("Farmer Code is not Valid");
                                            window.setTimeout("history.go(-1)",0);
                                        </script>
                                        <%
                                    // response.sendRedirect("LogIn.jsp");
                                     //out.println("Password is not Valid");
                                    }
                                    }
                                   else
                                    {
                                      %>
                                        <script>
                                            window.alert("Please enter valid Farmer code  and password to Log in");
                                            window.setTimeout("history.go(-1)",0);
                                        </script>
                                        <%
                                    }
                                }
                            catch(Exception e)
                            {
                                out.println(e.toString());
                            }
                        %>
