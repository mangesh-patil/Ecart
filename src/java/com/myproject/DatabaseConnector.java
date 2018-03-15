/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myproject;
import java.io.*;
import java.sql.*;

/**
 *
 * @author Mangesh
 */
public class DatabaseConnector {
    public static String url="jdbc:mysql://localhost:3306/ecart";
    public static String user="root";
    public static String password="root";
    public static Connection con;
    
    public static Connection getConnection()
            {
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  con=DriverManager.getConnection(url,user,password);
                  
              }
              catch(SQLException e)
              {
                  e.printStackTrace();
              }
              catch(Exception e)
              {
                  e.printStackTrace();
              }
              return con;
            }
    public static Statement getStatement()
    {
        Statement stmt=null;
        try
        {
            con=getConnection();
            stmt=con.createStatement();
        }
        catch(SQLException e)
              {
                  e.printStackTrace();
              }
              catch(Exception e)
              {
                  e.printStackTrace();
              }
              return stmt;
    }
    public static PreparedStatement getPreparedStatement(String query)
    {
        PreparedStatement pstmt=null;
        try
        {
            con=getConnection();
            pstmt=con.prepareStatement(query);
        }
        catch(SQLException e)
              {
                  e.printStackTrace();
              }
              catch(Exception e)
              {
                  e.printStackTrace();
              }
        return pstmt;
    }
    public static ResultSet getResultSet(String query)
    {
        ResultSet rs=null;
        try
        {
          Statement stmt=getStatement();
          rs=stmt.executeQuery(query);
        }
    catch(SQLException e)
              {
                  e.printStackTrace();
              }
              catch(Exception e)
              {
                  e.printStackTrace();
              }
        return rs;
    }
    public static void close()
    {
        try{
            if(con!=null)
            {
                con.close();
            }
        }
            catch(SQLException e)
              {
                  e.printStackTrace();
              }
              catch(Exception e)
              {
                  e.printStackTrace();
              }
        }
    }

