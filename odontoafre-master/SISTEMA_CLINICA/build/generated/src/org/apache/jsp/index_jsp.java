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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("       ");
      out.write("\n");
      out.write("\n");
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"estilos22.css\"/>\n");
      out.write("         \n");
      out.write("         \n");
      out.write(" <table border=\"0\" width=\"1000\" align=\"center\">\n");
      out.write("     <tr bgcolor=\"skyblue\" style=\"width: 50px; height: 50px;\">\n");
      out.write("                <th><a href=\"index.jsp\"> Inicio</a> </th>\n");
      out.write("                    ");
                   if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                    
      out.write("\n");
      out.write("                \n");
      out.write("                  <th><a href=\"obtenerPagosInter.jsp\"> Buscar Pagos En Intervalo</a> </th>\n");
      out.write("                <th><a href=\"registrarUsuario.jsp\"> Regisrar Usuario</a> </th>\n");
      out.write("                \n");
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
      out.write("\n");
      out.write("                   <th><a href=\"ServletControlador?accion=MostrarUsuarios\"> Mostrar Usuarios</a> </th>\n");
      out.write("                <th><a href=\"ServletControlador?accion=BuscarPaciente\"> Buscar Paciente</a> </th>\n");
      out.write("\n");
      out.write("                ");
                    }

                if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ASISTENTE")) {



                
      out.write("\n");
      out.write("<th><a href=\"ServletControlador?accion=BuscarPaciente\"> Buscar Paciente</a> </th>\n");
      out.write("                \n");
      out.write("                 ");
                    }



                
      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                ");
if (sesionOK.getAttribute("perfil") != null) {

                        //si alguien ya inicio sesion entonces mostrar su nombre 
                
      out.write("\n");
      out.write("                <th><a href=\"ServletLogueo?accion=cerrar\"> Cerrar Sesion</a> </th>\n");
      out.write("                <th width=\"200\">");
out.println("Bienvenido:  " + nom);
      out.write("\n");
      out.write("\n");
      out.write("                </th> \n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("                ");

                    //si alguien no ha iniciado sesion entonces muestra el iniciar sesion
                    if (sesionOK.getAttribute("perfil") == null) {


                
      out.write("\n");
      out.write("                <th with=\"200\"><a href=\"login.jsp\"> Iniciar Sesion</a> </th>\n");
      out.write("                    ");
                }
                    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </tr>  \n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("            </head>\n");
      out.write("    <body>          \n");
      out.write("                     <center>   \n");
      out.write("                  \n");
      out.write("     <center>   \n");
      out.write("    <h2 >SISTEMA CLINICA DENTAL</h2>\n");
      out.write("\n");
      out.write("   \n");
      out.write("    </center>\n");
      out.write("        \n");
      out.write("         \n");
      out.write("               \n");
      out.write("    <h2 align=\"center\">Registrese</h2>\n");
      out.write("    <center>\n");
      out.write("      <form  action=\"ServletControlador\" method=\"get\">\n");
      out.write("    \n");
      out.write("     <br>          <label>Primer Apellido:</label>\n");
      out.write("                   <input type=\"text\" placeholder=\"Primer Apellido\" name=\"txtApellido\" pattern=\"[A-Z ]+\"  required=\"\"  title=\"SOLO MAYUSCULAS\">\n");
      out.write("                     <label>Segundo Apellido:</label>\n");
      out.write("                   <input type=\"text\" placeholder=\"Segundo Apellido\" name=\"txtApellido2\" pattern=\"[A-Z ]+\"  required=\"\"  title=\"SOLO MAYUSCULAS\">\n");
      out.write("                    <label>PrimerNombre</label>\n");
      out.write("                   <input type=\"text\" placeholder=\"Primer Nombre\" name=\"txtNombre\" pattern=\"[A-Z ]+\"  required=\"\"  title=\"SOLO MAYUSCULAS\">\n");
      out.write("                   <label>Segundo Nombre</label>\n");
      out.write("                   <input type=\"text\" placeholder=\"Segundo Nombre\" name=\"txtNombre2\" pattern=\"[A-Z ]+\"  required=\"\"  title=\"SOLO MAYUSCULAS\">\n");
      out.write("              \n");
      out.write("\n");
      out.write("                   <br> <label>Fecha de Nacimiento</label>\n");
      out.write("                 <input type=\"date\" placeholder=\"Nacimiento\" name=\"txtNacimiento\"> \n");
      out.write("                 <label> Direccion Domiciliar</label>\n");
      out.write("                <input type=\"text\" placeholder=\"Direccion\" name=\"txtDireccion\"   required=\"\" >\n");
      out.write("        \n");
      out.write("             \n");
      out.write("                \n");
      out.write("                \n");
      out.write("         \n");
      out.write("                <br>   <label>Telefono Recidencial</label>\n");
      out.write("                   <input type=\"number\" placeholder=\"Telefono\"  name=\"txtRecidencial\" title=\"Solo Numeros\" >\n");
      out.write("                  \n");
      out.write("                   <label>Telefono Celular 1</label>\n");
      out.write("                  <input type=\"number\" placeholder=\"Celular\" name=\"txtCelular1\" title=\"Solo Numeros\">\n");
      out.write("               \n");
      out.write("            \n");
      out.write("             \n");
      out.write("                 \n");
      out.write("             \n");
      out.write("                  <br>  <label>Telefono Celular 2</label>\n");
      out.write("                   <input type=\"number\" placeholder=\"Celular2\" name=\"txtCelular2\">\n");
      out.write("                    <label>Doctor Que Refirio</label>\n");
      out.write("                   <input type=\"text\" placeholder=\"Referencia\" name=\"txtReferencia\">\n");
      out.write("               \n");
      out.write("                 \n");
      out.write("                    <br>  <label>Ocupacion</label>\n");
      out.write("                     <th><input type=\"text\" placeholder=\"Ocupacion\" name=\"txtOcupacion\"  ></th> \n");
      out.write("\n");
      out.write("                      \n");
      out.write("                    <br>  <label>DPI</label>\n");
      out.write("                    <th><input type=\"text\" placeholder=\"DPI\" name=\"txtdpi\" </th> \n");
      out.write("\n");
      out.write("\n");
      out.write("                     <br>   <input type=\"submit\" value=\"Registrar\" name=\"Registrarse\" />\n");
      out.write("        \n");
      out.write("                \n");
      out.write("\n");
      out.write("                 <input type=\"hidden\" name=\"accion\" value=\"RegistrarPaciente\"/> \n");
      out.write("\n");
      out.write(" \n");
      out.write("     </form> \n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("               <a href=\"#\" id=\"logo\"></a>\n");
      out.write("    <nav>\n");
      out.write("        <a href=\"#\" id=\"menu-icon\"></a>\n");
      out.write("    </nav>       \n");
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
