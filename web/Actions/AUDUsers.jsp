<%-- 
    Document   : AUDUsers
    Created on : Feb 28, 2018, 8:17:55 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,com.myproject.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            Users u=new Users();
            int uid,contact;
            String name,address,email,password;
            String action=request.getParameter("action");
            if(action.equalsIgnoreCase("add"))
            {
               // uid=Integer.parseInt(request.getParameter("uid"));
                name=request.getParameter("name");
                address=request.getParameter("address");
                email=request.getParameter("email");
                password=request.getParameter("password");
                contact=Integer.parseInt(request.getParameter("contact"));
                
                //u.setUid(uid);
                u.setName(name);
                u.setAddress(address);
                u.setEmail(email);
                u.setContact(contact);
                u.setPassword(password);
                
                String result=UserWorker.addUser(u);
                if(result.equals(Results.SUCCESS))
                {
                       response.sendRedirect("Success.jsp");
                }
                else
                {
                       response.sendRedirect("Error.jsp");
                }
              }
               
            if(action.equalsIgnoreCase("update"))
            {
                uid=Integer.parseInt(request.getParameter("uid"));
                name=request.getParameter("name");
                address=request.getParameter("address");
                email=request.getParameter("email");
                password=request.getParameter("password");
                contact=Integer.parseInt(request.getParameter("contact"));
                
                u.setUid(uid);
                u.setName(name);
                u.setAddress(address);
                u.setEmail(email);
                u.setContact(contact);
                u.setPassword(password);
                
                String result=UserWorker.updateUser(u);
                if(result.equals(Results.SUCCESS))
                {
                       response.sendRedirect("Success.jsp");
                }
                else
                {
                       response.sendRedirect("Error.jsp");
                }
            }
            
            
            if(action.equalsIgnoreCase("delete"))
            {
                uid=Integer.parseInt(request.getParameter("uid"));
                String result=UserWorker.deleteUser(uid);
                if(result.equals(Results.SUCCESS))
                {
                       response.sendRedirect("Success.jsp");
                }
                else
                {
                       response.sendRedirect("Error.jsp");
                }
            }
            
            
            
         %>
    </body>
</html>
