<%-- 
    Document   : Orders
    Created on : Mar 1, 2018, 1:23:43 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*,com.myproject.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <style>
            body {
                    background-image: url("img.jpg");
                 }
             div {
                    position: fixed;
                   
                 }
          </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body><div>
            <font face="arial" color="white" size="3">
        <li>
        <ul><a href="Home.jsp">Home</a></ul>
        <ul><a href="Products.jsp">Products</a></ul>
        <ul><a href="Orders.jsp">Orders</a></ul>
        <ul><a href="users.jsp">Users<a/></ul>
        <ul><a href="Profile.jsp">Profile</a></ul>
        <ul><a href="../Actions/AdminLogout.jsp">Logout</a></ul>
    </li>
    <br>
    <br>
    
    <h1>Order Details</h1>
    <table border="3">
        <tr>
               <th>Order ID</th>
               <th>User ID</th>
               <th>Product ID</th>
               <th>Name</th>
               <th>Total Cost</th>
               <th>Order Date</th>
               <th>Delivery Date</th>
               <th>Status</th>
        </tr>
        
        <% ArrayList<Orders> list=OrderWorker.getAllOrders();
        for(Orders o:list)
        {
            
        %>
        <tr>
            <td><a href="ShowOrderById.jsp?oid=<%=o.getOid()%>"> <%=o.getOid()%></a></td>
            <td><%=o.getUid()%></td>
            <td><%=o.getPid()%></td>
            <td><%=o.getName()%></td>
            <td><%=o.getTotal_cost()%></td>
            <td><%=o.getOrder_date()%></td>
            <td><%=o.getDel_date()%></td>
            <td><%=o.getStatus()%></td>
        </tr>
        <%
        }
        %>
         </table>
        </div>
    </body>
</html>
