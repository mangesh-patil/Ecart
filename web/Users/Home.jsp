<%-- 
    Document   : hOME
    Created on : Mar 1, 2018, 1:42:48 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </li>
    
    
    
    <br>
    </body>
    <%
        }
        %>
</html>
