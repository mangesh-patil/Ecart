<%-- 
    Document   : AdminLogout
    Created on : Mar 1, 2018, 1:40:11 AM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session.removeAttribute("adminid");
            session.invalidate();
            response.sendRedirect("../Admin/Login.jsp");
            
            
            %>
    </body>
</html>
