package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.Paciente;
import java.util.ArrayList;

public final class prueba_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <div class=\"encabezado\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write(" \n");
      out.write("    </div>\n");
      out.write("    <div class=\"contenido\">\n");
      out.write("        \n");
      out.write("         <div class=\"table-responsive-xl\">\n");
      out.write("            <table class=\"table\">\n");
      out.write("                <thead class=\"thead-light\" >\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\">#</th>\n");
      out.write("                        <th scope=\"col\">PRIMER APELLIDO</th>\n");
      out.write("                        <th scope=\"col\">SEGUNDO APELLIDO</th>\n");
      out.write("                        <th scope=\"col\">PRIMER NOMBRE</th>\n");
      out.write("                        <th scope=\"col\">SEGUNDO NOMBRE</th>\n");
      out.write("                        <th scope=\"col\">FECHA</th>\n");
      out.write("                        <th scope=\"col\">DIRECCION</th>\n");
      out.write("                        <th scope=\"col\">RECIDENCIAL</th>\n");
      out.write("                        <th scope=\"col\">TEL 1</th>\n");
      out.write("                        <th scope=\"col\">TEL 2</th>\n");
      out.write("                        <th scope=\"col\">REFERIDO</th>\n");
      out.write("                        <th scope=\"col\">OCUPACON</th>\n");
      out.write("                        <th scope=\"col\">DPI</th>\n");
      out.write("                        <th scope=\"col\">ACCIONES</th>\n");
      out.write("                        <th scope=\"col\"></th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    ");
  ArrayList<Paciente> lista = (ArrayList<Paciente>) request.getAttribute("lista");
                        for (Paciente v : lista) {
                    
      out.write("  \n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(v.getCodigo_paciente());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getApellidos());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getApellidos2());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getNombres());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getNombres2());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getFecha());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getDireccion());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getTelefono_recidencial());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getTelefono1());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getTelefono2());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getReferido());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getOcupacion());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(v.getDpi());
      out.write("</td>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write("                      \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                      \n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                            ");
                    }

                            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </div>\n");
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
