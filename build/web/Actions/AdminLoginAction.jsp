<%-- 
    Document   : AdminLoginAction
    Created on : Mar 1, 2018, 1:17:43 AM
    Author     : Mangesh
--%>

<%@page import="com.myproject.DatabaseConnector, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
        <%
            String adminid=request.getParameter("adminid");
            String adminpass=request.getParameter("adminpass");
            try
            {
            String query="select * from admin where adminid='"+adminid+"' and adminpass='"+adminpass+"'";
            ResultSet rs=DatabaseConnector.getResultSet(query);
            if(rs.next())
            {   
                session.setAttribute("adminid",adminid);
                response.sendRedirect("../Admin/Home.jsp");
            }
            else
            {
                response.sendRedirect("../Admin/Login.jsp");
            }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            %>
    </body>
</html>
