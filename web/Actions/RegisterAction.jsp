<%-- 
    Document   : RegisterAction
    Created on : Mar 1, 2018, 1:35:16 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.myproject.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Users u=new Users();
            String name,address,email,password;
            double contact;
            name=request.getParameter("name");
            address=request.getParameter("address");
            email=request.getParameter("email");
            password=request.getParameter("password");
            contact=Double.parseDouble(request.getParameter("contact"));
            
            u.setName(name);
            u.setAddress(address);
            u.setEmail(email);
            u.setPassword(password);
            u.setContact(contact);
            
            String result=UserWorker.addUser(u);
            if(result.equals(Results.SUCCESS))
            {
                response.sendRedirect("Success.jsp");
            }
            else
            {
                response.sendRedirect("Error.jsp");
            }
            
            %>
    </body>
</html>
