<%-- 
    Document   : Products
    Created on : Mar 1, 2018, 12:27:17 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.myproject.*, java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
    <form method="post" action="AddProduct.jsp">
        <input type="Submit" value="Add Product">
    </form>
    <br>
    <br><h1>Product Details</h1>
    <table border="3">
        <tr>
               <th>Product Id</th>
               <th>Name</th>
               <th>Description</th>
               <th>Category</th>
               <th>Price</th>
               <th>Availability</th>
               <th>Delivery charges</th>
        </tr>
  
    <% ArrayList<Products> list=ProductWorker.getAllProducts();
        for(Products pt:list)
        {
            
        %>
        <tr>
            <td><a href="ShowProductById.jsp?pid=<%=pt.getPid()%>"> <%=pt.getPid()%></a></td>
            <td><%=pt.getName()%></td>
            <td><%=pt.getDescription()%></td>
            <td><%=pt.getCategory()%></td>
            <td><%=pt.getPrice()%></td>
            <td><%=pt.getAvailability()%></td>
            <td><%=pt.getDeliverycharges()%></td>
        </tr>
        <%
        }
        %>
         </table>
    </body>
</html>
