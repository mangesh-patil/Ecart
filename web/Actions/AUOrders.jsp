<%-- 
    Document   : AUOrders
    Created on : Mar 1, 2018, 12:57:12 AM
    Author     : Mangesh
--%>

<%@page import="sun.misc.Perf.GetPerfAction"%>
<%@page import="com.myproject.DateConverter"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*, com.myproject.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            Orders o=new Orders();
            int oid,uid,pid;
            String name,total_cost,status;
            String order_date,del_date;
            int price,deliverycharges;
            
            String action=request.getParameter("action");
            if(action.equalsIgnoreCase("order"))
            {
                Object o1=session.getAttribute("uid");
                String s=String.valueOf(o1);
                uid=Integer.valueOf(s);
                pid=Integer.parseInt(request.getParameter("pid"));
                name=request.getParameter("name");
                //total_cost=request.getParameter("total_cost");
               // order_date=DateConverter.ConvertToSQL(request.getParameter("order_date"));
               // del_date=DateConverter.ConvertToSQL(request.getParameter("del_date"));
                status="Placed Order";
                price=Integer.parseInt(request.getParameter("price"));
                deliverycharges=Integer.parseInt(request.getParameter("deliverycharges"));
                total_cost=(Integer.toString(price+deliverycharges));
                order_date=DateConverter.getCurrentDate();
                del_date=DateConverter.getDeliveryDate();
                
                o.setUid(uid);
                o.setPid(pid);
                o.setName(name);
                o.setTotal_cost(total_cost);
                o.setOrder_date(order_date);
                o.setDel_date(del_date);
                o.setStatus(status);
                
                String result=OrderWorker.addOrder(o);
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
                oid=Integer.parseInt(request.getParameter("oid"));
                uid=Integer.parseInt(request.getParameter("uid"));
                pid=Integer.parseInt(request.getParameter("pid"));
                name=request.getParameter("name");
                total_cost=request.getParameter("total_cost");
                order_date=DateConverter.ConvertToSQL(request.getParameter("order_date"));
                del_date=DateConverter.ConvertToSQL(request.getParameter("del_date"));
                status=request.getParameter("status");
                
                o.setOid(oid);
                o.setUid(uid);
                o.setPid(pid);
                o.setName(name);
                o.setTotal_cost(total_cost);
                o.setOrder_date(order_date);
                o.setDel_date(del_date);
                o.setStatus(status);
                
                String result=OrderWorker.updateOrder(o);
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
