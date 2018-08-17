package com.jsp.agro;

import java.sql.Connection;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DatabaseListener  implements ServletContextListener
{
     private Connection connection;

    public void contextInitialized(ServletContextEvent sce) 
    {
        this.connection=Helper.connect();
        sce.getServletContext().setAttribute("DB", connection);
    }

    public void contextDestroyed(ServletContextEvent sce) 
    {
        Helper.disconnect(connection);
    }
     
     
}
