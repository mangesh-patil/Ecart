<%-- 
    Document   : AddProduct
    Created on : Feb 27, 2018, 5:03:32 PM
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
        <title>Add Product</title>
    </head>
    <body><div>
        <font face="arial" color="white" size="3">
        <center>
        <form method="get" action="../Actions/AUDProducts.jsp">
             <table border="1">
                 <tr>
                     <th colspan="2">
                         Add Product
                     </th>
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
                     <td><input type="submit" name="action" value="Add"></td>
                     <td><input type="reset" value="Reset"></td>
                 </tr>
                 
             </table>
        </form></center></div>
    </body>
</html>
