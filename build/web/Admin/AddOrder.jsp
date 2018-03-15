<%-- 
    Document   : UpdateOrder
    Created on : Feb 27, 2018, 5:08:59 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
            body {
                    background-image: url("img.jpg");
                 }
             div {
                    position: fixed;
                    top: 50%;
                    left: 50%;
                    margin-top: -100px;
                    margin-left: -200px;
                 }
          </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Order</title>
    </head>
    <body><div>
        <font face="arial" color="white" size="3">
        
        <form action="../Actions/AUOrders.jsp" method="get">
            <center> <table border="1">
                <tr>
                    <th colspan="2">
                        Add Order 
                    </th>
                </tr>
                
                <tr>
                    <td>User ID</td>
                    <td><input type="text" name="uid"></td>
                </tr>
                <tr>
                    <td>Product ID</td>
                    <td><input type="text" name="pid"></td>
                </tr>
                <tr>
                    <td>Order Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Total cost</td>
                    <td><input type="text" name="total_cost"></td>
                </tr>
                <tr>
                    <td>Order Date</td>
                    <td><input type="text" name="order_date"></td>
                </tr>
                <tr>
                    <td>Delivery Date</td>
                    <td><input type="text" name="del_date"></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td><input type="text" name="status"></td>
                </tr>
                <tr>
                    <td><center><input type="submit" name="action" value="Add"></center></td>
                </tr>
            </table></center>
        </form></div>
    </body>
</html>
