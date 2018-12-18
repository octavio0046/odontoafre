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
import Modelo.PagosBD;
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
@WebServlet(name = "ServletPagos", urlPatterns = {"/ServletPagos"})
public class ServletPagos extends HttpServlet {

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
    if  (accion.equals("RegistrarPagoPaciente")) {
      registrarPagoPaciente(request, response);
    } else if (accion.equals("BuscarUnDiaPagos")) {
      BuscarUnPago(request, response);
    } else if (accion.equals("BuscarInterPagos")) {
      BuscarInterPagos(request, response);
    } else if (!accion.equals("buscarPresupuestoPago")) {
      if (accion.equals("RegistrarPagoPresupuesto")) {
        registrarPagoPaciente(request, response);
      }
    }
  }
  
  private void registrarPagoPaciente(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodPresu"));
    int codigoPaciente = Integer.parseInt(request.getParameter("txtCodPaciente"));
    double precio = Double.parseDouble(request.getParameter("txtPago"));
    String usuario = request.getParameter("txtUsuario");
    
    PagosDia p = new PagosDia(cod, codigoPaciente, precio, usuario);
    
    int rpta = PagosBD.insertarPagoPaciente(p);
    if (rpta > 0)
    {
      int num_recibo = rpta;
      
      response.sendRedirect("reciboPago.jsp?cod=" + num_recibo + "");
    }
    else
    {
      response.sendRedirect("mensaje2.jsp?men=No se Registro Correctamente");
    }
  }
  
  
  
  private void BuscarInterPagos(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<PagosDia> lista = new ArrayList();
    lista = PagosBD.obtenerIntervaloPago(request.getParameter("txtFecha"), request.getParameter("txtFecha2"));
    
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("PagosPagosIntervalo.jsp").forward(request, response);
  }
  

  private void BuscarUnPago(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<PagosDia> lista = new ArrayList();
    lista = PagosBD.obtenerUndiaPago(request.getParameter("txtFecha"));
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("PagosPagosDia.jsp").forward(request, response);
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
