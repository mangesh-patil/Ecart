<%-- 
    Document   : ShowProductById
    Created on : Mar 1, 2018, 1:47:06 PM
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
        <ul><a href="../Actions/AdminLogout.jsp">Logout</a></ul>
    </li>
    <br><br>
    <%
        int pid=Integer.parseInt(request.getParameter("pid"));
        Products pt=ProductWorker.getProfductById(pid);
          %>
          
          <form method="post" action="../Actions/AUOrders.jsp">
              <input type="hidden" name="pid" value="<%=pt.getPid()%>">
              <input type="hidden" name="name" value="<%=pt.getName()%>">
              <input type="hidden" name="price" value="<%=pt.getPrice()%>">
              <input type="hidden" name="deliverycharges" value="<%=pt.getDeliverycharges()%>">
              
              
              
              <table border="2">
            <tr>
                <td>Product ID</td>
                <td><%=pt.getPid()%></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><%=pt.getName()%></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%=pt.getDescription()%></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><%=pt.getCategory()%></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><%=pt.getPrice()%></td>
            </tr>
            <tr>
                <td>Availability</td>
                <td><%=pt.getAvailability()%></td>
            </tr><tr>
                <td>Delivery charges</td>
                <td><%=pt.getDeliverycharges()%></td>
            </tr>
            <tr>
                <td><input type="submit" name="action" value="order"</td>
                
                
            </tr>
        </table>
          </form>
    </body>
    <%
        }
        %>
</html>
