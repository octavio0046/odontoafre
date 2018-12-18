package Controlador;

import Modelo.DetallePaciente;
import Modelo.FormularioPaciente;
import Modelo.HistorialPaciente;
import Modelo.Imagenes;
import Modelo.Paciente;
import Modelo.PacienteBD;
import Modelo.PagosDia;
import Modelo.Presupuesto;
import Modelo.Usuarios;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="ServletControlador", urlPatterns={"/ServletControlador"})
public class ServletControlador
  extends HttpServlet
{
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    String accion = request.getParameter("accion");
    if   (accion.equals("RegistrarImagen")) {
      registrarImagen(request, response);
    } 
  }
  
  
  
  private void registrarImagen(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodPaciente"));
    String nomima = request.getParameter("txtNombre");
    String obserima = request.getParameter("txtObservacion");
    String img = request.getParameter("txtImagen");
    
    Imagenes p = new Imagenes(cod, nomima, obserima, img);
    
    boolean rpta = PacienteBD.insertarImagen(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=Se Registro La imagen de manera correcta");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se registro la imagen");
    }
  }
  

  

  


  

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    processRequest(request, response);
  }
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    processRequest(request, response);
  }
  
  public String getServletInfo()
  {
    return "Short description";
  }
}
