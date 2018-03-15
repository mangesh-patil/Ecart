package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.myproject.UserWorker;
import java.util.*;
import com.myproject.*;

public final class users_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("         <style>\n");
      out.write("            body {\n");
      out.write("                    background-image: url(\"img.jpg\");\n");
      out.write("                 }\n");
      out.write("             div {\n");
      out.write("                    position: fixed;\n");
      out.write("                   \n");
      out.write("                 }\n");
      out.write("          </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("    <body><div>\n");
      out.write("            <font face=\"arial\" color=\"white\" size=\"3\">\n");
      out.write("        \n");
      out.write("        <li>\n");
      out.write("        <ul><a href=\"Home.jsp\">Home</a></ul>\n");
      out.write("        <ul><a href=\"Products.jsp\">Products</a></ul>\n");
      out.write("        <ul><a href=\"Orders.jsp\">Orders</a></ul>\n");
      out.write("        <ul><a href=\"users.jsp\">Users<a/></ul>\n");
      out.write("        <ul><a href=\"Profile.jsp\">Profile</a></ul>\n");
      out.write("        <ul><a href=\"../Actions/AdminLogout.jsp\">Logout</a></ul>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <table border=\"2\">\n");
      out.write("           <tr>\n");
      out.write("               <th>User id</th>\n");
      out.write("               <th>Name</th>\n");
      out.write("               <th>Address</th>\n");
      out.write("               <th>email</th>\n");
      out.write("               <th>contact</th>\n");
      out.write("               <th>password</th>\n");
      out.write("               \n");
      out.write("           </tr>\n");
      out.write("        ");

            ArrayList<Users> list=UserWorker.getAllUsers();
            for(Users u:list)
            {
       
      out.write("\n");
      out.write("       <tr>\n");
      out.write("           <td>");
      out.print(u.getUid());
      out.write("</td>\n");
      out.write("           <td>");
      out.print(u.getName());
      out.write("</td>\n");
      out.write("           <td>");
      out.print(u.getAddress());
      out.write("</td>\n");
      out.write("           <td>");
      out.print(u.getEmail());
      out.write("</td>\n");
      out.write("           <td>");
      out.print(u.getContact());
      out.write("</td>\n");
      out.write("           <td>");
      out.print(u.getPassword());
      out.write("</td>\n");
      out.write("           \n");
      out.write("       </tr>\n");
      out.write("       ");

            }
           
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
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
