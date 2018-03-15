<%-- 
    Document   : Login
    Created on : Feb 27, 2018, 4:34:04 PM
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
        <title>User Login</title>
    </head>
    <body>
        <div>
        <font face="arial" color="white" size="3">
        
        <form method="post" action="../Actions/UserLoginAction.jsp">
            <center><table>
                    <tr>
                        <th colspan="2">User Login</th>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type= "text" name="email"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td><center><input type="submit" name="action" value="Login"></center></td>
                        <td><center><input type="reset" value="Reset"></center></td>
                    </tr>
                 </table></center></div>
                 
    </body>
</html>
