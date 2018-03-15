<%-- 
    Document   : UserLogout
    Created on : Mar 1, 2018, 1:43:24 AM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Logout</title>
    </head>
    <body>
        <%
            session.removeAttribute("uid");
            session.invalidate();
            response.sendRedirect("../Users/Login.jsp");
            %>
    </body>
</html>
