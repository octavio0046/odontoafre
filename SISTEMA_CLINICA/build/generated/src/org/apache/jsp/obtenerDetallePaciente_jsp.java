package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.*;
import java.util.*;

public final class obtenerDetallePaciente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <div class=\"cabecera\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css\" integrity=\"sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS\" crossorigin=\"anonymous\">\n");
      out.write("   <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js\" integrity=\"sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js\" integrity=\"sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"contenido\"> \n");
      out.write("\n");
      out.write("    <!-- Modal -->\n");
      out.write("<div class=\"modal fade\" id=\"exampleModalLongAnt\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLongTitle\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">Modal title</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <h2 align=\"center\">Antecedentes del Paciente</h2>\n");
      out.write("        \n");
      out.write("        <table border=\"1\" width=\"600\" align=\"center\">\n");
      out.write("            \n");
      out.write("             ");

               Paciente pa = PacienteBD.obtenerPacientes2();
              
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

                ArrayList<FormularioPaciente> listaDeta = DetallePaciente.obtenerFormularioPaciente(pa.getCodigo_paciente());
                for (int i = 0; i < listaDeta.size(); i++) {
                    FormularioPaciente d = listaDeta.get(i);
            
      out.write(" \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <tr bgcolor=\"skyblue\"> \n");
      out.write("            <tr>  \n");
      out.write("                <td>Cod Formulario</td> \n");
      out.write("                <td>");
      out.print( d.getCodigo_formulario());
      out.write("</td>\n");
      out.write("           </tr>\n");
      out.write("           <tr>\n");
      out.write("                 <td>Cod_paciente</td> \n");
      out.write("                  <td>");
      out.print( d.getCodigo());
      out.write("</td>\n");
      out.write("           \n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                     <td>1.Cuantas Veces se Sepilla al Dia?</td> \n");
      out.write("                     <td>");
      out.print( d.getCuantas_veces());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("                       \n");
      out.write("            <tr>\n");
      out.write("                <td>2.Utiliza hilo Dental</td>         \n");
      out.write("                <td>");
      out.print( d.getHilo());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td>3.Utiliza Limpia Lengua</td> \n");
      out.write("                  <td>");
      out.print( d.getLengua());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>4.Sangra al Cepillarse?</td> \n");
      out.write("                  <td>");
      out.print( d.getSangra());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td>5.Motivo de consulta</td> \n");
      out.write("                    <td>");
      out.print( d.getMotivo());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td>6. Tiene alguna Molestia</td> \n");
      out.write("                <td>");
      out.print( d.getMolestais());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>7. Como es?</td> \n");
      out.write("              <td>");
      out.print( d.getEs());
      out.write("</td>\n");
      out.write("          </tr>\n");
      out.write("          \n");
      out.write("          <tr>\n");
      out.write("              <td>8. Duele mas al</td> \n");
      out.write("                <td>");
      out.print( d.getDuele());
      out.write("</td>\n");
      out.write("         </tr>\n");
      out.write("         <tr>\n");
      out.write("                <td>9.Inflamacion alguna vez?</td> \n");
      out.write("                    <th>");
      out.print( d.getInflamacion());
      out.write("</td>\n");
      out.write("         </tr>\n");
      out.write("\n");
      out.write("         <tr>\n");
      out.write("                    <td>10.Le gusta el color de sus dientes?</td> \n");
      out.write("                <td>");
      out.print( d.getColor());
      out.write("</td>\n");
      out.write("       </tr>        \n");
      out.write("        <tr>   \n");
      out.write("               <td>11.Cree tener Mal aliento</td> \n");
      out.write("               <td>");
      out.print( d.getMal_aliento());
      out.write("</td>\n");
      out.write("       </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>12.Cuando fue la ultima vez al Dentista </td> \n");
      out.write("                       <th>");
      out.print( d.getUltima_vez());
      out.write("</td>\n");
      out.write("          </tr>\n");
      out.write("     <tr>\n");
      out.write("          <td>13.Esta Embarazada</td> \n");
      out.write("                <td>");
      out.print( d.getEmbarazada());
      out.write("</td>\n");
      out.write("     </tr>         \n");
      out.write("       <tr>        \n");
      out.write("                <td>14.Tiene algun Medicamento</td> \n");
      out.write("                 <td>");
      out.print( d.getMedicamento());
      out.write("</td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          \n");
      out.write("      \n");
      out.write("                <td>15.Le han colocado anestesia</td>\n");
      out.write("                   <td>");
      out.print( d.getAnestesia());
      out.write("</td>\n");
      out.write("         </tr> \n");
      out.write("         <tr>\n");
      out.write("                   <td>16.Le han extraido piezas dentales</td> \n");
      out.write("                <td>");
      out.print( d.getExtraido());
      out.write("</td>\n");
      out.write("         </tr> \n");
      out.write("         <tr>\n");
      out.write("                <td>17.Le han extraido Hemorragias</td> \n");
      out.write("                    <th>");
      out.print( d.getHemorragias());
      out.write("</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("                    <td>18.Padece alguna enfermedad</td> \n");
      out.write("                <th>");
      out.print( d.getEnfermedad());
      out.write("</td>\n");
      out.write("        </tr>         \n");
      out.write("        <tr>   \n");
      out.write("        <td>19.Enfermedad que tiene</td> \n");
      out.write("                      <th>");
      out.print( d.getEnfermedad2());
      out.write("</td>\n");
      out.write("       </tr>\n");
      out.write("       <tr>\n");
      out.write("                  <td>20.Ha estado Hospitalizado</td> \n");
      out.write("                 <th>");
      out.print( d.getHospitalizado());
      out.write("</td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("                 <td>21. Por que?</td> \n");
      out.write("                <td>");
      out.print( d.getPorque());
      out.write("</td>\n");
      out.write("      </tr>   \n");
      out.write("                   </tr>\n");
      out.write("               \n");
      out.write("\n");
      out.write("\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\">Save changes</button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
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
