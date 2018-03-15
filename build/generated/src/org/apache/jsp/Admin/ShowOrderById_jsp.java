package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.myproject.*;

public final class ShowOrderById_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <li>\n");
      out.write("        <ul><a href=\"Home.jsp\">Home</a></ul>\n");
      out.write("        <ul><a href=\"Products.jsp\">Products</a></ul>\n");
      out.write("        <ul><a href=\"Orders.jsp\">Orders</a></ul>\n");
      out.write("        <ul><a href=\"users.jsp\">Users<a/></ul>\n");
      out.write("        <ul><a href=\"Profile.jsp\">Profile</a></ul>\n");
      out.write("        <ul><a href=\"../Actions/AdminLogout.jsp\">Logout</a></ul>\n");
      out.write("    </li>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("             \n");
      out.write("                    \n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("                  \n");
      out.write("               \n");
      out.write("        ");

            int oid=Integer.parseInt(request.getParameter("oid"));
            Orders o=OrderWorker.getOrderById(oid);
          
      out.write("\n");
      out.write("          \n");
      out.write("          <form method=\"post\" action=\"../Actions/AUOrder.jsp\">\n");
      out.write("              <table border=\"2\">\n");
      out.write("             <tr>\n");
      out.write("              <td>Order ID</td>\n");
      out.write("              <td><input type=\"text\" name=\"oid\" value=\"");
      out.print(o.getOid());
      out.write("\" readonly=\"true\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>User ID</td>\n");
      out.write("                 <td><input type=\"text\" name=\"uid\" value=\"");
      out.print(o.getUid());
      out.write("\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>Product ID</td>\n");
      out.write("                 <td><input type=\"text\" name=\"pid\" value=\"");
      out.print(o.getPid());
      out.write("\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>Name</td>\n");
      out.write("                 <td><input type=\"text\" name=\"name\" value=\"");
      out.print(o.getName());
      out.write("\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>Total cost</td>\n");
      out.write("                 <td><input type=\"text\" name=\"total_cost\" value=\"");
      out.print(o.getTotal_cost());
      out.write("\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>Order date</td>\n");
      out.write("                 <td><input type=\"text\" name=\"order_date\" value=\"");
      out.print(o.getOrder_date());
      out.write("\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>Delivery date</td>\n");
      out.write("                 <td><input type=\"text\" name=\"del_date\" value=\"");
      out.print(o.getDel_date());
      out.write("\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>Status</td>\n");
      out.write("                 <td><input type=\"text\" name=\"status\" value=\"");
      out.print(o.getStatus());
      out.write("\"></td>\n");
      out.write("             </tr>\n");
      out.write("          <tr>\n");
      out.write("            <input type=\"submit\" name=\"action\" value=\"update\"></tr>\n");
      out.write("          <br>\n");
      out.write("         \n");
      out.write("         </table>\n");
      out.write("          </form>   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
