
<%-- 
    Document   : ShowOrderById
    Created on : Mar 1, 2018, 7:01:30 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, com.myproject.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
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
    <br> <%
            int oid=Integer.parseInt(request.getParameter("oid"));
            Orders o=OrderWorker.getOrderById(oid);
          %>
          
          <form method="post" action="../Actions/AUOrders.jsp">
              <table border="2">
             <tr>
              <td>Order ID</td>
              <td><input type="text" name="oid" value="<%=o.getOid()%>" readonly="true"></td>
             </tr>
             <tr>
                 <td>User ID</td>
                 <td><input type="text" name="uid" value="<%=o.getUid()%>"></td>
             </tr>
             <tr>
                 <td>Product ID</td>
                 <td><input type="text" name="pid" value="<%=o.getPid()%>"></td>
             </tr>
             <tr>
                 <td>Name</td>
                 <td><input type="text" name="name" value="<%=o.getName()%>"></td>
             </tr>
             <tr>
                 <td>Total cost</td>
                 <td><input type="text" name="total_cost" value="<%=o.getTotal_cost()%>"></td>
             </tr>
             <tr>
                 <td>Order date</td>
                 <td><input type="text" name="order_date" value="<%=o.getOrder_date()%>"></td>
             </tr>
             <tr>
                 <td>Delivery date</td>
                 <td><input type="text" name="del_date" value="<%=o.getDel_date()%>"></td>
             </tr>
             <tr>
                 <td>Status</td>
                 <td><input type="text" name="status" value="<%=o.getStatus()%>"></td>
             </tr>
          <tr>
              <td><input type="submit" name="action" value="update"></td>
            </tr>
          <br>
         
         </table>
          </form>   
    </body>
</html>
