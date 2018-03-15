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
public class ProductWorker {
    public static String addProduct(Products pt)
    {
        String result=" ";
        try
        {
            String query="insert into products (name,description,category,price,availability,deliverycharges) values (?,?,?,?,?,?)";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,pt.getName());
            pstmt.setString(2,pt.getDescription());
            pstmt.setString(3,pt.getCategory());
            pstmt.setString(4,pt.getPrice());
            pstmt.setString(5,pt.getAvailability());
            pstmt.setString(6,pt.getDeliverycharges());
            
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
    
    
    public static String updateProduct(Products pt)
    {
        String result=" ";
        try
        {
            String query="update products set name=?,description=?,category=?,price=?,availability=?,deliverycharges=? where pid=? ";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setString(1,pt.getName());
            pstmt.setString(2,pt.getDescription());
            pstmt.setString(3,pt.getCategory());
            pstmt.setString(4,pt.getPrice());
            pstmt.setString(5,pt.getAvailability());
            pstmt.setString(6,pt.getDeliverycharges());
            pstmt.setInt(7,pt.getPid());
            
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
    
    
    public static String deleteProduct(int pid)
    {
        String result=" ";
        try
        {
            String query="delete from products where pid='"+pid+"'";
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
    
    
    public static Products getProfductById(int pid)
    {
        Products pt=null;
        try
        {
            String query="select * from products where pid='"+pid+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {
                pt=new Products();
                pt.setPid(rs.getInt(1));
                pt.setName(rs.getString(2));
                pt.setDescription(rs.getString(3));
                pt.setCategory(rs.getString(4));
                pt.setPrice(rs.getString(5));
                pt.setAvailability(rs.getString(6));
                pt.setDeliverycharges(rs.getString(7));
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return pt;
    }
    
    
    public static Products getProfductByName(String name)
    {
        Products pt=null;
        try
        {
            String query="select * from products where name='"+name+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {
                pt=new Products();
                pt.setPid(rs.getInt(1));
                pt.setName(rs.getString(2));
                pt.setDescription(rs.getString(3));
                pt.setCategory(rs.getString(4));
                pt.setPrice(rs.getString(5));
                pt.setAvailability(rs.getString(6));
                pt.setDeliverycharges(rs.getString(7));
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return pt;
    }
    
    public static ArrayList<Products> getAllProducts()
    {
        Products pt=null;
        ArrayList<Products> list=new ArrayList<Products>();
        try
        {
            String query="select * from products";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next())
            {
                pt=new Products();
                pt.setPid(rs.getInt(1));
                pt.setName(rs.getString(2));
                pt.setDescription(rs.getString(3));
                pt.setCategory(rs.getString(4));
                pt.setPrice(rs.getString(5));
                pt.setAvailability(rs.getString(6));
                pt.setDeliverycharges(rs.getString(7));
                list.add(pt);
                pt=null;
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    
    
     public static ArrayList<Products> getAllProductsByCategory(String cat)
    {
        Products pt=null;
        ArrayList<Products> list=new ArrayList<Products>();
        try
        {
            String query="select * from products where category='"+cat+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next())
            {
                pt=new Products();
                pt.setPid(rs.getInt(1));
                pt.setName(rs.getString(2));
                pt.setDescription(rs.getString(3));
                pt.setCategory(rs.getString(4));
                pt.setPrice(rs.getString(5));
                pt.setAvailability(rs.getString(6));
                pt.setDeliverycharges(rs.getString(7));
                list.add(pt);
                pt=null;
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
}
