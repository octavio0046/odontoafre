package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class popuppanel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"media/css/boostrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"media/css/dataTables.bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"media/font-awesome/css/font-awesome.css\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <script src=\"media/js/jquery-1.10.2.js\"></script>\n");
      out.write("        <script src=\"media/js/jquery.dataTables.min.js\"></script>\n");
      out.write("        <script src=\"media/js/dataTables.bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"media/js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"media/js/lenguajeusuario.js\"></script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function()){\n");
      out.write("            $('[data-toggle=\"tooltip\"]').tooltip();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"col-md-8 col-md-offset-2\" >\n");
      out.write("            <table id=\"example\" class=\"table table-striped table-bordered\" cellspacing=\"0\" width=\"100%\" >\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>usuario</th>\n");
      out.write("                        <th>password</th>\n");
      out.write("                        <th>nnombre</th>\n");
      out.write("                        <th>tipo</th>\n");
      out.write("                    </tr> \n");
      out.write("                    \n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    \n");
      out.write("                </tbody>\n");
      out.write("                <tfoot>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Usuario</th> \n");
      out.write("                         <th>Password</th> \n");
      out.write("                          <th>Nombre</th> \n");
      out.write("                           <th>Tipo</th> \n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                </tfoot>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("        </div>       \n");
      out.write("        \n");
      out.write("        \n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("\n");
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
