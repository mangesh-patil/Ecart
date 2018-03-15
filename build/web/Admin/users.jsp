<%-- 
    Document   : Users
    Created on : Mar 1, 2018, 6:37:24 PM
    Author     : Mangesh
--%>

<%@page import="com.myproject.UserWorker"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.myproject.*"%>
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
        
        
        <table border="2">
           <tr>
               <th>User id</th>
               <th>Name</th>
               <th>Address</th>
               <th>email</th>
               <th>contact</th>
               <th>password</th>
               
           </tr>
        <%
            ArrayList<Users> list=UserWorker.getAllUsers();
            for(Users u:list)
            {
       %>
       <tr>
           <td><%=u.getUid()%></td>
           <td><%=u.getName()%></td>
           <td><%=u.getAddress()%></td>
           <td><%=u.getEmail()%></td>
           <td><%=u.getContact()%></td>
           <td><%=u.getPassword()%></td>
           
       </tr>
       <%
            }
           %>
        </table>
        </div>
    </body>
</html>
