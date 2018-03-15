<%-- 
    Document   : Orders
    Created on : Mar 1, 2018, 6:19:16 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.myproject.*,java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
     <%
        Object o=session.getAttribute("uid");
        if(o==null)
        {
            response.sendRedirect("Login.jsp");
        }
        else
        {
            
            Object o1=session.getAttribute("uid");
            int uid=(Integer)o1;
            session.setAttribute("uid",uid);
        %>
    <body>
        <li>
        <ul><a href="Home.jsp">Home</a></ul>
        <ul><a href="Products.jsp">Products</a></ul>
        <ul><a href="Orders.jsp">Orders</a></ul>
        <ul><a href="Profile.jsp">Profile</a></ul>
        <ul><a href="../Actions/UserLogout.jsp">Logout</a></ul>
    </li><br><br>
    
    <table border="2">
        <tr>
        <th>Order ID</th>
        <th>User ID</th>
        <th>Product ID</th>
        <th>Order Name</th>
        <th>Total Cost</th>
        <th>Order date</th>
        <th>Delivery Date</th>
        <th>Status</th>
        </tr>
        
        <%
            ArrayList<Orders> list=OrderWorker.getOrderByUid(uid);
            for(Orders o2:list)
            {
            
            %>
            <tr>
                 <td><%=o2.getOid()%></td>
                 <td><%=o2.getUid()%></td>
                 <td><%=o2.getPid()%></td>
                 <td><%=o2.getName()%></td>
                 <td><%=o2.getTotal_cost()%></td>
                 <td><%=o2.getOrder_date()%></td>
                 <td><%=o2.getDel_date()%></td>
                 <td><%=o2.getStatus()%></td>
            </tr>
            
            
            <%
            }
            %>
    </table>
    </body>
    <%
        }
        %>
</html>
