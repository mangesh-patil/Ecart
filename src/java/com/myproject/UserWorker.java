/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myproject;
import java.io.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Mangesh
 */
public class UserWorker {
    public static String addUser(Users u)
    {
        String result=" ";
        try
        {
            String query="insert into users (name,address,email,contact,password) values(?,?,?,?,?)";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,u.getName());
            pstmt.setString(2,u.getAddress());
            pstmt.setString(3,u.getEmail());
            pstmt.setDouble(4,u.getContact());
            pstmt.setString(5,u.getPassword());
            
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
    
    public static String updateUser(Users u)
    {
        String result=" ";
        try
        {
            String query="update users set name=?, address=?, email=?, contact=?, password=? where uid=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,u.getName());
            pstmt.setString(2,u.getAddress());
            pstmt.setString(3,u.getEmail());
            pstmt.setDouble(4,u.getContact());
            pstmt.setString(5,u.getPassword());
            pstmt.setInt(6,u.getUid());
            
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
    
    public static String deleteUser(int uid)
    {
        String result=" ";
        try
        {
            String query="delete from users where uid='"+uid+"'";
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
    
    public static Users getUserById(int uid)
    {
        Users u=null;
        try
        {
            String query="select * from users where uid='"+uid+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {
                u=new Users();
                u.setUid(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setAddress(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setContact(rs.getDouble(5));
                u.setPassword(rs.getString(6));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return u;
    }
    public static Users getUserByEmail(String email)
    {
        Users u=null;
        try
        {
            String query="select * from users where email='"+email+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {
                u=new Users();
                u.setUid(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setAddress(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setContact(rs.getDouble(5));
                u.setPassword(rs.getString(6));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return u;
    }
    
    public static ArrayList<Users> getAllUsers()
    {
        Users u=null;
        ArrayList<Users> list=new ArrayList<Users>();
        try
        {
            String query="select * from users";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next())
            {
                u=new Users();
                u.setUid(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setAddress(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setContact(rs.getDouble(5));
                u.setPassword(rs.getString(6));
                list.add(u);
                u=null;
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
}
