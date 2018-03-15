<%-- 
    Document   : AUDAdmin
    Created on : Feb 28, 2018, 7:05:12 PM
    Author     : Mangesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.myproject.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            Admin ad=new Admin();
            int aid;
            String adminid,adminpass;
            String action=request.getParameter("action");
            
            if(action.equalsIgnoreCase("add"))
            {
                adminid=request.getParameter("adminid");
                adminpass=request.getParameter("adminpass");
                
                ad.setAdminid(adminid);
                ad.setAdminpass(adminpass);
                String result=AdminWorker.addAdmin(ad);
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
                aid=Integer.parseInt(request.getParameter("aid"));
                adminid=request.getParameter("adminid");
                adminpass=request.getParameter("adminpass");
                
                ad.setAid(aid);
                ad.setAdminid(adminid);
                ad.setAdminpass(adminpass);
                
                String result=AdminWorker.updateAdmin(ad);
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
                aid=Integer.parseInt(request.getParameter("aid"));
                
                String result=AdminWorker.deleteAdmin(aid);
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
