package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/template1.jsp");
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

  response.setHeader("Pragma", "no-cahe");
  response.addHeader("Cache-control", "must-revalidate");
  response.addHeader("Cache-control", "no-cache");
  response.addHeader("Cache-control", "no-store");
  response.setDateHeader("Expires", 0);


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <div class=\"cabecera\">\n");
      out.write("        \n");
      out.write("    \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

  response.setHeader("Pragma", "no-cache");
  response.addHeader("Cache-control", "must-revalidate");
  response.addHeader("Cache-control", "no-cache");
  response.addHeader("Cache-control", "no-store");
  response.setDateHeader("Expires", 0);
  try {
           if(session.getAttribute("nom")==null){
      

      request.getRequestDispatcher("index.jsp").forward(request, response);
      
  }
  }catch(Exception e){
      
    request.getRequestDispatcher("index.jsp").forward(request, response);  
  }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");

     
   
    String usu = "";
    String nom = "";
    HttpSession sesionOK = request.getSession();

    if (sesionOK.getAttribute("perfil") != null) {
        nom = (String) sesionOK.getAttribute("nom") + " " + (String) sesionOK.getAttribute("ape");

    }



      out.write("\n");
      out.write("<html>\n");
      out.write("    <div class=\"cabecera\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"estilos22.css\"/>\n");
      out.write("         \n");
      out.write("         <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("         <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("         \n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary \" >\n");
      out.write("  <a class=\"navbar-brand\" href=\"index.jsp\">INICIO</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  \n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("    <ul class=\"navbar-nav mr-auto\">\n");
      out.write(" \n");
      out.write("   \n");
      out.write("      \n");
      out.write("    \n");
      out.write("              ");
                   if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                    
      out.write("\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            CONSULTAS\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"obtenerPagosInter.jsp\">Buscar Pagos en Intervalo</a>\n");
      out.write("        \n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">#</a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("               \n");
      out.write("                    ");
                }

                        
                    
      out.write("\n");
      out.write("\n");
      out.write("         \n");
      out.write("                 \n");
      out.write("\n");
      out.write("                ");
        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                
      out.write("\n");
      out.write("      \n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("   PACIENTES A\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"ServletPacientes?accion=BuscarPaciente\">Buscar Paciente</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"formRegistrarPaciente.jsp\">Registrar Paciente</a>\n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("         <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("       USUARIOS\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("            <a class=\"dropdown-item\" href=\"registrarUsuario.jsp\">Registrar Usuario</a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"ServletUsuarios?accion=MostrarUsuarios\">Mostrar Usuarios</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("\n");
      out.write("      \n");
      out.write("      \n");
      out.write("             ");
                    }

                if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ASISTENTE")) {



                
      out.write("\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("        PACIENTES\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"ServletPacientes?accion=BuscarPaciente\">Buscar Paciente</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"formRegistrarPaciente.jsp\">RegistrarPaciente</a>\n");
      out.write("          <div class=\"dropdown-divider\"></div>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">#</a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("     \n");
      out.write("      \n");
      out.write("          \n");
      out.write("                      ");
                    }



                
      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                ");
if (sesionOK.getAttribute("perfil") != null) {

                        //si alguien ya inicio sesion entonces mostrar su nombre 
                
      out.write("\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link disabled\" href=\"ServletLogueo?accion=cerrar\">CERRAR SESION</a>\n");
      out.write("        \n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link disabled\" >");
out.println("Bienvenido:  " + nom);
      out.write("</a>\n");
      out.write("        \n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("\n");
      out.write("    </ul>\n");
      out.write("    \n");
      out.write("                     ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("                ");

                    //si alguien no ha iniciado sesion entonces muestra el iniciar sesion
                    if (sesionOK.getAttribute("perfil") == null) {


                
      out.write("\n");
      out.write("     \n");
      out.write("                \n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" data-toggle=\"modal\" data-target=\"#exampleModalLong\" >INICIAR SESION</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("   \n");
      out.write("      \n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("             ");
                }
                    
      out.write("\n");
      out.write("      \n");
      out.write(" \n");
      out.write("    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("    <body>      \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- Modal -->\n");
      out.write("<div class=\"modal fade\" id=\"exampleModalLong\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLongTitle\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("          <h5  class=\"modal-title\" id=\"exampleModalLongTitle\">LOGIN</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        \n");
      out.write("          \n");
      out.write("          \n");
      out.write("             <center>\n");
      out.write("          <form class=\"login\" action=\"ServletLogueo\" method=\"post\" >\n");
      out.write("                <input type=\"hidden\" name=\"accion\" value=\"loguin\"/>\n");
      out.write("           \n");
      out.write("                <label>Usuario:</label>\n");
      out.write("                <input type=\"text\" placeholder=\"Usuario\" name=\"txtUsu\"  pattern=\"[A-Z]+\"  required=\"\"  title=\"SOLO MAYUSCULAS\">\n");
      out.write("                 <br><br>\n");
      out.write("                   <label>Contraseña:</label>\n");
      out.write("                  <input type=\"password\" placeholder=\"Password\" name=\"txtPas\" required=\"\">\n");
      out.write("                  <br><br> <input type=\"submit\"  class=\"btn btn-success\"  value=\"Iniciar Sesion\" >  \n");
      out.write("            </form>\n");
      out.write("             </center>\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Close</button>\n");
      out.write("      \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("     </div>\n");
      out.write("        <div class=\"contenido\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <center>\n");
      out.write("                \n");
      out.write("            \n");
      out.write("            <h1>BIENVENIDOS</h1>\n");
      out.write("            <h2>SISTEMA CLINICA DENTAL</h2>\n");
      out.write("            </center>\n");
      out.write("        </div>          \n");
      out.write("                 \n");
      out.write("                  \n");
      out.write("\n");
      out.write("  \n");
      out.write("    \n");
      out.write("    \n");
      out.write("  \n");
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
