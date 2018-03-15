<%-- 
    Document   : Register
    Created on : Feb 27, 2018, 5:20:08 PM
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
        <title>Profile</title>
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
    <body><div>
        <font face="arial" color="white" size="3">
        
        <form method="post" action="../Actions/RegisterAction.jsp">
            <center>  <table border="1">
                <tr>
                    <th colspan="2">Profile</th>
                </tr>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="uid"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email"></td>
                </tr>
                  <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="contact"></td>
                </tr>
                <tr>
                    <td><center><input type="submit" name="action" value="Update"></center></td>
                    <td><center><input type="reset" value="Reset"></center></td>
                </tr>
                
            </table></center></div>
        </form>
    </body>
    <%
        }
        %>
</html>
