package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "index.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("                        \t<div class=\"subheader\">\n");
      out.write("                    <h2>Student List</h2>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"subheaderlink\">\n");
      out.write("                    <a href=\"#\">Add Student</a>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12 alert-primary\">\n");
      out.write("                    <center><h2>Booking Slots</h2></center>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12 alert-dark\">\n");
      out.write("                        <form action=\"RoutineServlet\" action=\"get\">\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label>Day:</label>\n");
      out.write("                          <select name=\"day\" style=\"width: 100%;height: 40px;\">\n");
      out.write("                            <option>Saturday</option>\n");
      out.write("                            <option>Sunday</option>\n");
      out.write("                            <option>Monday</option>\n");
      out.write("                            <option>Tuesday</option>\n");
      out.write("                            <option>Wednesday</option>\n");
      out.write("                          </select>\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label>Id:</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"teacherId\">\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label>Name:</label>\n");
      out.write("                             <input type=\"text\" class=\"form-control\" placeholder=\"Enter Cource code\" name=\"p1\">\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label>Department:</label>\n");
      out.write("                             <input type=\"text\" class=\"form-control\" placeholder=\"Enter Cource code\" name=\"p2\">\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label>Email:</label>\n");
      out.write("                             <input type=\"text\" class=\"form-control\" placeholder=\"Enter Cource code\" name=\"p3\">\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"form-group\">\n");
      out.write("                            <label>CGPA:</label>\n");
      out.write("                             <input type=\"text\" class=\"form-control\" placeholder=\"Enter Cource code\" name=\"p4\">\n");
      out.write("                          </div>\n");
      out.write("                          </div>\n");
      out.write("                            <input type=\"submit\" value=\"SUBMIT\" class=\"btn btn-success btn-block\">\n");
      out.write("                        </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
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
