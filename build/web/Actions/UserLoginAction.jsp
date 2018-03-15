<%-- 
    Document   : AdminLoginAction
    Created on : Mar 1, 2018, 1:17:43 AM
    Author     : Mangesh
--%>

<%@page import="com.myproject.*"%>
<%@page import="com.myproject.DatabaseConnector, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            try
            {
            String query="select * from users where email='"+email+"' and password='"+password+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {
                Users u=UserWorker.getUserByEmail(email);
                int uid1=u.getUid();
                session.setAttribute("uid",uid1);
                response.sendRedirect("../Users/Home.jsp");
            }
            else
            {
                response.sendRedirect("../Users/Login.jsp");
            }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            %>
    </body>
</html>
