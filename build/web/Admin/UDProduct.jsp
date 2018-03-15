<%-- 
    Document   : UDProduct
    Created on : Feb 27, 2018, 5:02:48 PM
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
        <title>Update Product</title>
    </head>
    <body><div>
        <font face="arial" color="white" size="3">
        
        <form method="get" action="../Actions/AUDProducts.jsp">
            <center> <table border="1">
                 <tr>
                     <th colspan="2">
                         Update Product
                     </th>
                 </tr>
                 <tr>
                     <td>Id</td>
                     <td><input type="text" name="pid"></td>
                 </tr>
                 <tr>
                     <td>Name</td>
                     <td><input type="text" name="name"></td>
                 </tr>
                 <tr>
                     <td>Description</td>
                     <td><input type="text" name="description"></td>
                 </tr>
                 <tr>
                     <td>Category</td>
                     <td><input type="text" name="category"></td>
                 </tr>
                 <tr>
                     <td>Price</td>
                     <td><input type="text" name="price"></td>
                 </tr>
                 <tr>
                     <td>Availability</td>
                     <td><input type="text" name="availability"></td>
                 </tr>
                 <tr>
                     <td>Delivery Charges</td>
                     <td><input type="text" name="deliverycharges"></td>
                 </tr>
                 <tr>
                     <td><center><input type="submit" name="action" value="Update"></center></td>
                     <td><center><input type="submit" name="action" value="Delete"></center></td>
                 </tr>
                 
                </table></center>
        </form></div>
    </body>
</html>
