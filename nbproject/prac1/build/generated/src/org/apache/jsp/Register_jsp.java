package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Registration Form</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style type=text/css>\n");
      out.write("\t\t.container{\n");
      out.write("\t\t\t\t\twidth: 500px;\n");
      out.write("\t\t\t\t\tclear: bottom;\n");
      out.write("                                        height: 500px;\n");
      out.write("\t\t\t\t}\n");
      out.write("                .container input {\n");
      out.write("                                        width: 30%;\n");
      out.write("                                        clear: both;\n");
      out.write("                                }\n");
      out.write("\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\tp.big{\n");
      out.write("\t\t\t\t\tline-height:200%;\n");
      out.write("\t\t\t\t}\n");
      out.write("      </style>\n");
      out.write("      <script>\n");
      out.write("            function Mobileno(inputtxt)  \n");
      out.write("        {  \n");
      out.write("            var Mobileno = /^\\+?([0-9]{2})\\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;  \n");
      out.write("            if((inputtxt.value.match(Mobileno))  \n");
      out.write("        {  \n");
      out.write("            return true;  \n");
      out.write("        }  \n");
      out.write("        else  \n");
      out.write("        {  \n");
      out.write("        alert(\"please enter valid mobile number\");  \n");
      out.write("        return false;  \n");
      out.write("        }  \n");
      out.write("        }  \n");
      out.write("        function emailcheck(str) {\n");
      out.write(" \n");
      out.write("        var at=\"@\"\n");
      out.write("        var dot=\".\"\n");
      out.write("        var lat=str.indexOf(at)\n");
      out.write("        var lstr=str.length\n");
      out.write("        var ldot=str.indexOf(dot)\n");
      out.write("        if (str.indexOf(at)==-1){\n");
      out.write("        alert(\"Invalid E-mail ID\")\n");
      out.write(" \n");
      out.write("        return false\n");
      out.write("        }else\n");
      out.write("        return true\n");
      out.write("        }\n");
      out.write("      </script>\n");
      out.write("                \n");
      out.write("    </head>\n");
      out.write("     <body background=\"img_nature.jpg\">\n");
      out.write("         \n");
      out.write("\t <center>\n");
      out.write("         <h1>Thank u for choosing us please enter your details</h1>\n");
      out.write("        <form action=\"RegisterDao.java\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("            <p align=\"left\" class= \"big\">\n");
      out.write("            First Name:<input type=\"text\" name=\"FirstName\" value=\"\"/></br>\n");
      out.write("            Last Name:<input type=\"text\" name=\"LastName\" value=\"\"/></br>\n");
      out.write("            \n");
      out.write("            Mobile NO:<input type=\"number\" onclick=\"Mobileno()\"name=\"Mobile.no\" value=\"\"/></br>\n");
      out.write("            Email:<input type=\"text\" onclick=\"emailcheck()\" name=\"Email\" value=\"\"/></br>\n");
      out.write("            UserName:<input type=\"text\" name=\"username\" value=\"\"/></br>\n");
      out.write("            Password:<input type=\"password\" name=\"password\" value=\"\"/></br>\n");
      out.write("            </p>\n");
      out.write("\n");
      out.write("            <p align=\"center\"><input type=\"submit\"  value=\"Register\"/></p>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </center> \n");
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
