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
public class OrderWorker {
    public static String addOrder(Orders o)
    {
        String result=" ";
        try
        {
           // String date=DateConverter.getCurrentDate();
            
            String query="insert into orders (uid,pid,name,total_cost,order_date,del_date,status) values(?,?,?,?,?,?,?)";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,o.getUid());
            pstmt.setInt(2,o.getPid());
            pstmt.setString(3,o.getName());
            pstmt.setString(4,o.getTotal_cost());
            pstmt.setString(5,o.getOrder_date());
            pstmt.setString(6,o.getDel_date());
            pstmt.setString(7,o.getStatus());
            
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
    
    public static String updateOrder(Orders o)
    {
        String result=" ";
        try
        {
           // String date=DateConverter.getCurrentDate();
            
            String query="update orders set uid=?,pid=?,name=?,total_cost=?,order_date=?,del_date=?,status=? where oid=?";
            PreparedStatement pstmt=DatabaseConnector.getPreparedStatement(query);
            pstmt.setInt(1,o.getUid());
            pstmt.setInt(2,o.getPid());
            pstmt.setString(3,o.getName());
            pstmt.setString(4,o.getTotal_cost());
           pstmt.setString(5,o.getOrder_date());
            pstmt.setString(6,o.getDel_date());
            pstmt.setString(7,o.getStatus());
            pstmt.setInt(8,o.getOid());
            
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
    
    public static Orders getOrderById(int oid)
    {
        Orders o=null;
        try
        {
            String query="select * from orders where oid='"+oid+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {
                o=new Orders();
                o.setOid(rs.getInt(1));
                o.setUid(rs.getInt(2));
                o.setPid(rs.getInt(3));
                o.setName(rs.getString(4));
                o.setTotal_cost(rs.getString(5));
                o.setOrder_date(rs.getString(6));
                o.setDel_date(rs.getString(7));
                o.setStatus(rs.getString(8));
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return o;
    }
    public static ArrayList<Orders> getOrderByPid(int pid)
    {   
        ArrayList<Orders> list=new ArrayList<Orders>();
        Orders o=null;
        try
        {
            String query="select * from orders where pid='"+pid+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next())
            {
                o=new Orders();
                o.setOid(rs.getInt(1));
                o.setUid(rs.getInt(2));
                o.setPid(rs.getInt(3));
                o.setName(rs.getString(4));
                o.setTotal_cost(rs.getString(5));
                o.setOrder_date(rs.getString(6));
                o.setDel_date(rs.getString(7));
                o.setStatus(rs.getString(8));
                list.add(o);
                o=null;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    
    
    public static ArrayList<Orders> getOrderByUid(int uid)
    {   
        ArrayList<Orders> list=new ArrayList<Orders>();
        Orders o=null;
        try
        {
            String query="select * from orders where uid='"+uid+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next())
            {
                o=new Orders();
                o.setOid(rs.getInt(1));
                o.setUid(rs.getInt(2));
                o.setPid(rs.getInt(3));
                o.setName(rs.getString(4));
                o.setTotal_cost(rs.getString(5));
                o.setOrder_date(rs.getString(6));
                o.setDel_date(rs.getString(7));
                o.setStatus(rs.getString(8));
                list.add(o);
                o=null;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    
    public static ArrayList<Orders> getAllOrders()
    {   
        ArrayList<Orders> list=new ArrayList<Orders>();
        Orders o=null;
        try
        {
            String query="select * from orders";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            while(rs.next())
            {
                o=new Orders();
                o.setOid(rs.getInt(1));
                o.setUid(rs.getInt(2));
                o.setPid(rs.getInt(3));
                o.setName(rs.getString(4));
                o.setTotal_cost(rs.getString(5));
                o.setOrder_date(rs.getString(6));
                o.setDel_date(rs.getString(7));
                o.setStatus(rs.getString(8));
                list.add(o);
                o=null;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
}
