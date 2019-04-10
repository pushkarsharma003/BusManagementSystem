package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/AdminNavbar.jsp");
    _jspx_dependants.add("/Footer.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"fontawesome-free-5.7.2-web\\css\\all.css\">\n");
      out.write("    <link rel=\"icon\" type=\"image/ico\" href=\"images/logo.png\"/>\n");
      out.write("        <title>Add Student User</title>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                font-family: verdana;\n");
      out.write("                margin: 0px;\n");
      out.write("            }\n");
      out.write("        .data{\n");
      out.write("        background-color: white;\n");
      out.write("        height:580px;\n");
      out.write("        width:450px;\n");
      out.write("        position: relative;\n");
      out.write("        left:450px;\n");
      out.write("        top:40px;\n");
      out.write("        border:1px solid lightgray;\n");
      out.write("        border-radius: 10px;\n");
      out.write("        text-align: center;\n");
      out.write("            }\n");
      out.write("        .form{\n");
      out.write("        margin:40px;\n");
      out.write("        border:none;\n");
      out.write("        height: 85%;\n");
      out.write("        width: 80%;\n");
      out.write("            }\n");
      out.write("        .input{\n");
      out.write("        height: 40px;\n");
      out.write("        width:70%;\n");
      out.write("        border-radius: 5px;\n");
      out.write("        border:none;\n");
      out.write("        font-size: 16px;\n");
      out.write("        border:2px solid lightgray;\n");
      out.write("      }\n");
      out.write("      .input:focus{\n");
      out.write("        border:2px solid dodgerblue;\n");
      out.write("        background-color: white;\n");
      out.write("      }\n");
      out.write("      .submit{\n");
      out.write("        padding: 10px 22px;\n");
      out.write("        border-radius: 6px;\n");
      out.write("        border:1px solid silver;\n");
      out.write("        background-color: dodgerblue;\n");
      out.write("        color: white;\n");
      out.write("        font-size: 16px;\n");
      out.write("        position: absolute;\n");
      out.write("        left:300px;\n");
      out.write("        cursor: pointer;\n");
      out.write("        font-weight: bold;\n");
      out.write("        font-family: arial;\n");
      out.write("      }\n");
      out.write("      .h{\n");
      out.write("          font-family: arial;\n");
      out.write("          font-weight: bold;\n");
      out.write("          font-size: 28px;\n");
      out.write("          color:dodgerblue;\n");
      out.write("      }\n");
      out.write("      .cancel{\n");
      out.write("          padding: 10px 22px;\n");
      out.write("        border-radius: 6px;\n");
      out.write("        border:1px solid silver;\n");
      out.write("        background-color: dodgerblue;\n");
      out.write("        color: white;\n");
      out.write("        font-size: 16px;\n");
      out.write("        position: absolute;\n");
      out.write("        left:60px;\n");
      out.write("        cursor: pointer;\n");
      out.write("        font-weight: bold;  \n");
      out.write("        font-family: arial;\n");
      out.write("        text-decoration: none;\n");
      out.write("      }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("      function validateform(){\n");
      out.write("        var x=document.forms[\"addstudent\"][\"username\"].value;\n");
      out.write("        var y=document.forms[\"addstudent\"][\"password\"].value;\n");
      out.write("        var z=document.forms[\"addstudent\"][\"id\"].value;\n");
      out.write("        var w=document.forms[\"addstudent\"][\"batch\"].value;\n");
      out.write("        if(x===\"\" | y===\"\" | z===\"\" | w===\"\"){\n");
      out.write("          alert(\"Please fill all fields!!!\");\n");
      out.write("          return false;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("    </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("        .navbar{\n");
      out.write("        width:100%;\n");
      out.write("        height:40px;\n");
      out.write("        background-color: lightgray;\n");
      out.write("        }\n");
      out.write("        .navbtn{\n");
      out.write("        height:40px;\n");
      out.write("        width:10%;\n");
      out.write("        font-family:arial;\n");
      out.write("        font-size: 14px;\n");
      out.write("        background-color: lightgray;\n");
      out.write("        color:dodgerblue;\n");
      out.write("        border:none;\n");
      out.write("        }\n");
      out.write("        .navbtn:hover{\n");
      out.write("            background-color: dodgerblue;\n");
      out.write("            color:white;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("        .AdminWelcome{\n");
      out.write("            font-size: 16px;\n");
      out.write("            float:right;\n");
      out.write("            position :relative;\n");
      out.write("            right:20px;\n");
      out.write("            top:25px;\n");
      out.write("        }\n");
      out.write("        .logoutbtn{\n");
      out.write("            padding: 8px 20px;\n");
      out.write("            border-radius: 10px;\n");
      out.write("            border:none;\n");
      out.write("            background-color: dodgerblue;\n");
      out.write("            color:white;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <img src=\"images/logo.png\"/>\n");
      out.write("        <p class=\"AdminWelcome\">\n");
      out.write("            Welcome <i class=\"fa fa-user\"></i> [\n");
      out.write("        ");

            HttpSession hs=request.getSession();
            String admin=(String)hs.getAttribute("AdminLogedin");
            if(admin!=null){    
                out.println(admin);
            }
            else{
                out.println("null");
            }
        
      out.write("]\n");
      out.write("        <a href=\"LogoutAdmin.jsp\" title=\"Logout\"><button class=\"logoutbtn\">Logout</button></a>\n");
      out.write("        </p>\n");
      out.write("        <div class=\"navbar\">\n");
      out.write("        <a href=\"AdminHome.jsp\"><button class=\"navbtn\" title=\"Home\"><i class=\"fa fa-home\"></i> Home</button></a>\n");
      out.write("        <a href=\"AddBusDetails.jsp\"><button class=\"navbtn\" title=\"Add Bus Details\"><i class=\"fa fa-bus\"></i> Add Bus</button></a>\n");
      out.write("        <a href=\"DeleteBusDetails.jsp\"><button class=\"navbtn\" title=\"Delete Bus Details\"><i class=\"fa fa-bus\"></i> Delete Bus</button></a>\n");
      out.write("        <a href=\"AddStudent.jsp\"><button class=\"navbtn\" title=\"Add student user\"><i class=\"fa fa-user-plus\"></i> Add Student</button></a>\n");
      out.write("        <a href=\"DeleteStudent.jsp\"><button class=\"navbtn\" title=\"Delete student user\"><i class=\"fa fa-user-minus\"></i> Delete Student</button></a>\n");
      out.write("        <a href=\"#\"><button class=\"navbtn\" title=\"Add faculty user\"><i class=\"fa fa-user-tie\"></i> Add Faculty</button></a>\n");
      out.write("        <a href=\"#\"><button class=\"navbtn\" title=\"Delete faculty user\"><i class=\"fa fa-user-tie\"></i> Delete Faculty</button></a>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <div class=\"data\">\n");
      out.write("            <p style=\"color:orange;font-size: 12px;\">\n");
      out.write("              ");

                HttpSession h=request.getSession();
                if(h.getAttribute("studentAdded")!=null){
                    out.print("*Student user added successfully");
                }
                h.removeAttribute("studentAdded");
            
      out.write("\n");
      out.write("            </p>\n");
      out.write("            <div class=\"form\">\n");
      out.write("          <p class=\"h\">Add Student User</p>\n");
      out.write("          <form action=\"AddStudent\" name=\"addstudent\" method=\"post\" onsubmit=\"return validateform()\">\n");
      out.write("          <input type=\"text\" name=\"username\" title=\"Username\" placeholder=\"Username\" class=\"input\"><br><br>\n");
      out.write("          <input type=\"password\" name=\"password\" title=\"Password\" placeholder=\"Password\" class=\"input\"><br><br>\n");
      out.write("          <input type=\"number\" name=\"id\" title=\"Id\" placeholder=\"Id\" class=\"input\"><br><br>\n");
      out.write("          <input type=\"number\" name=\"batch\" title=\"Batch\" placeholder=\"Batch\" class=\"input\"><br><br>\n");
      out.write("          <input type=\"text\" name=\"mobileno\" title=\"Mobile Number\" placeholder=\"Mobile Number\" class=\"input\"><br><br>\n");
      out.write("          <input type=\"text\" name=\"email\" title=\"Email\" placeholder=\"Email\" class=\"input\"><br><br><br>\n");
      out.write("          <a href=\"AdminHome.jsp\" class=\"cancel\" title=\"back to Home\">Cancel</a>\n");
      out.write("          <input type=\"submit\" class=\"submit\" title=\"Ready to add user\" value=\"Continue\">\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("            </div>\n");
      out.write("        <br><br><br>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            .p{\n");
      out.write("        font-family: arial;\n");
      out.write("        font-size: 12px;\n");
      out.write("        }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <hr>\n");
      out.write("        <div style=\"text-align:center;\">\n");
      out.write("        <p class=\"p\">&#0169 Copyright 2019, Xestor Bus & Co.</p>\n");
      out.write("        </div>\n");
      out.write("    <br>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
