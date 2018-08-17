package com.jsp.agro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class Helper 
{    
    public static Connection connect()
    {
        Connection cn=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/agriculture","root","");
            
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e.toString());
            System.exit(0);
        }
        return cn;
    }
    public static void disconnect(Connection connection)
    {        
        try
        {
            if(!connection.isClosed())
            {
                connection.close();
            }
        }
        catch(Exception e){}
        
    }

    public static String getComboBox(Connection connection,String sql)
    {
        String str="";
        try
        {
            PreparedStatement ps=connection.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                str+="<option value=\""+rs.getString(1)+"\">"+rs.getString(2)+"</option>";
            }
        }
        catch(Exception e)
        {
            str+="<option>No Data Available</option>";
        }
        return str;
    }

    public static int getCropCode(Connection connection,int landCode)
    {
        int cropCode=-1;
        try
        {
            PreparedStatement ps=connection.prepareStatement("select CROPCODE from crop where LANDCODE=? ");
            ps.setInt(1, landCode);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                cropCode=rs.getInt(1);
            }
        }
        catch(Exception e){}
        return cropCode;
    }
    public static int getFertilizerCode(Connection connection,int ferticode)
    {
        int cropCode=-1;
        try
        {
            PreparedStatement ps=connection.prepareStatement("select CROPCODE from fertilizer where FERTILIZERCODE=?");
            ps.setInt(1, cropCode);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                cropCode=rs.getInt(1);
            }
        }
        catch(Exception e)
        {}
        return cropCode;
    }
    
}
