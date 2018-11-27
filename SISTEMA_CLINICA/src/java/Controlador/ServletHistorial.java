/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.DetallePaciente;
import Modelo.FormularioPaciente;
import Modelo.HistorialPaciente;
import Modelo.Imagenes;
import Modelo.PacienteBD;
import Modelo.PagosDia;
import Modelo.Presupuesto;
import Modelo.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author OCTAVIOH
 */
@WebServlet(name = "ServletHistorial", urlPatterns = {"/ServletHistorial"})
public class ServletHistorial extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    String accion = request.getParameter("accion");
    if  (accion.equals("RegistrarHistorial")) {
      registrarHistorial(request, response);
    } else if (accion.equals("ModificarHistorial")) {
      actualizarHistorial(request, response);
    } else if (accion.equals("EliminarHistorial")) {
      eliminarHistorial(request, response);
     
    }
  }
  

  
  private void eliminarHistorial(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodigoHistorial"));
    
    boolean rpta = PacienteBD.EliminarHistorial(cod);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men = Se elimino el Historial correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men = No se elimino el Historial correctamente");
    }
  }
  
  private void actualizarHistorial(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int codHisto = Integer.parseInt(request.getParameter("txtCodigo"));
    
    double pieza = Double.parseDouble(request.getParameter("txtPieza"));
    String conducto = request.getParameter("txtConducto");
    String conductometria = request.getParameter("txtConductometria");
    String base = request.getParameter("txtBase");
    String otb = request.getParameter("txtOtb");
    String obser = request.getParameter("txtObservaciones");
    String usuario = request.getParameter("txtUsuario");
    String estado = request.getParameter("txtEstado");
    
    HistorialPaciente p = new HistorialPaciente(codHisto, pieza, conducto, conductometria, base, otb, obser, usuario, estado);
    boolean rpta = PacienteBD.actualizarHistorial(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=Se actualizo de manera correcta");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se actualizo ");
    }
  }
  
  private void registrarHistorial(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int codpaciente = Integer.parseInt(request.getParameter("txtCodigoPaciente"));
    
    double pieza = Double.parseDouble(request.getParameter("txtPieza"));
    String conducto = request.getParameter("txtConducto");
    String conductometria = request.getParameter("txtConductometria");
    String base = request.getParameter("txtBase");
    String otb = request.getParameter("txtOtb");
    String obser = request.getParameter("txtObservaciones");
    String usuario = request.getParameter("txtUsuario");
    
    HistorialPaciente p = new HistorialPaciente(codpaciente, pieza, conducto, conductometria, base, otb, obser, usuario);
    
    boolean rpta = PacienteBD.InseretarHistorial(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=se registro correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se regisro  correctamente");
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