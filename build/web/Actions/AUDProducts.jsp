<%-- 
    Document   : AUDProducts
    Created on : Feb 28, 2018, 2:16:49 PM
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
            Products pt=new Products();
            int pid;
            String name,description, category,price,availability,deliverycharges;
            String action=request.getParameter("action");
            
            if(action.equalsIgnoreCase("add"))
            {
                name=request.getParameter("name");
                description=request.getParameter("description");
                category=request.getParameter("category");
                price=request.getParameter("price");
                availability=request.getParameter("availability");
                deliverycharges=request.getParameter("deliverycharges");
                
                pt.setName(name);
                pt.setDescription(description);
                pt.setCategory(category);
                pt.setPrice(price);
                pt.setAvailability(availability);
                pt.setDeliverycharges(deliverycharges);
                
                String result=ProductWorker.addProduct(pt);
                if(result.equals(Results.SUCCESS))
                {
                    response.sendRedirect("../Admin/Success.jsp");
                }
                else
                {
                    response.sendRedirect("../Admin/Error.jsp");
                }
            }
            
            
            if(action.equalsIgnoreCase("update"))
            {   
                pid=Integer.parseInt(request.getParameter("pid"));
                name=request.getParameter("name");
                description=request.getParameter("description");
                category=request.getParameter("category");
                price=request.getParameter("price");
                availability=request.getParameter("availability");
                deliverycharges=request.getParameter("deliverycharges");
                
                pt.setPid(pid);
                pt.setName(name);
                pt.setDescription(description);
                pt.setCategory(category);
                pt.setPrice(price);
                pt.setAvailability(availability);
                pt.setDeliverycharges(deliverycharges);
                
                
                String result=ProductWorker.updateProduct(pt);
                if(result.equals(Results.SUCCESS))
                {
                    response.sendRedirect("../Admin/Success.jsp");
                }
                else
                {
                    response.sendRedirect("../Admin/Error.jsp");
                }
            }
           
            
             if(action.equalsIgnoreCase("delete"))
            {   
                pid=Integer.parseInt(request.getParameter("pid"));
               
                String result=ProductWorker.deleteProduct(pid);
                if(result.equals(Results.SUCCESS))
                {
                    response.sendRedirect("../Admin/Success.jsp");
                }
                else
                {
                    response.sendRedirect("../Admin/Error.jsp");
                }
            }
        %>
    </body>
</html>
