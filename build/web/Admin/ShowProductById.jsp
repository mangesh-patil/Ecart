<%-- 
    Document   : ShowProductById
    Created on : Mar 1, 2018, 12:54:00 PM
    Author     : Mangesh
--%>

<%@page import="com.myproject.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <%
        int pid=Integer.parseInt(request.getParameter("pid"));
        Products pt=ProductWorker.getProfductById(pid);
        
        %>
    <form method="post" action="../Actions/AUDProducts.jsp">
   
        <table border="2">
            <tr>
                <td>Product ID</td>
                <td><input type="text" name="pid" value="<%=pt.getPid()%>" readonly="true"></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%=pt.getName()%>"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="description" value="<%=pt.getDescription()%>"></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" name="category" value="<%=pt.getCategory()%>"></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price" value="<%=pt.getPrice()%>"></td>
            </tr>
            <tr>
                <td>Availability</td>
                <td><input type="text" name="availability" value="<%=pt.getAvailability()%>"></td>
            </tr><tr>
                <td>Delivery charges</td>
                <td><input type="text" name="deliverycharges" value="<%=pt.getDeliverycharges()%>"></td>
            </tr>
            <tr>
                <td><input type="submit" name="action" value="update"</td>
                <td><input type="submit" name="action" value="delete"</td>
                
            </tr>
        </table>
        
    </form>
    
    </body>
</html>
