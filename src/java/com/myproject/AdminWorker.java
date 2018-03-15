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
public class AdminWorker {
    
    public static String addAdmin(Admin ad)
    {
        String result=" ";
        try
        {
            String query="insert into admin(adminid,adminpass) values (?,?)";
            PreparedStatement pstmt= DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,ad.getAdminid());
            pstmt.setString(2,ad.getAdminpass());
            int i=pstmt.executeUpdate();
            if(i==1)
            {
                result=Results.SUCCESS;
            }
            else
            {
                result=Results.FAILURE;
            }
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        DatabaseConnector.close();
        return result;
    }
    
    public static String updateAdmin(Admin ad)
    {
        String result=" ";
        try
            {
                String query="update admin set adminid=?, adminpass=? where aid=?";
                PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
                pstmt.setString(1,ad.getAdminid());
                pstmt.setString(2,ad.getAdminpass());
                pstmt.setInt(3,ad.getAid());
                
                int i=pstmt.executeUpdate();
                if(i==1)
                {
                    result=Results.SUCCESS;
                }
                else
                {
                    result=Results.FAILURE;
                }
                
                
            }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        DatabaseConnector.close();
        return result;
    }
    
    public static String deleteAdmin(int aid)
    {
        String result=" ";
        try{
                 String query="delete from admin where aid='"+aid+"'";
                PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
                int i=pstmt.executeUpdate();
                if(i==1)
                {
                    result=Results.SUCCESS;
                }
                else
                {
                    result=Results.FAILURE;
                }
            }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        DatabaseConnector.close();
        return result;
    }
    
    public static Admin getAdminById(int aid)
    {
        Admin ad=null;
        try
            {
                String query="select * from admin where aid='"+aid+"'";
                ResultSet rs=DatabaseConnector.getResultSet(query);
                if(rs.next())
                {
                    ad=new Admin();
                    ad.setAid(rs.getInt(1));
                    ad.setAdminid(rs.getString(2));
                    ad.setAdminpass(rs.getString(3));
                }
            }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return ad;
    }
            
}
