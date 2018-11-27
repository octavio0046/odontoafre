/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Imagenes;
import Modelo.PacienteBD;
import Modelo.Presupuesto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author OCTAVIOH
 */
@WebServlet(name = "ServletTratamientos", urlPatterns = {"/ServletTratamientos"})
public class ServletTratamientos extends HttpServlet {

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
    if  (accion.equals("RegistrarPresupuesto")) {
      registrarPresupuesto(request, response);
    
    } else if (accion.equals("EliminarPresupuesto")) {
      eliminarPresupuesto(request, response);
    } else if (accion.equals("ModificarTratamiento")) {
      actualizarTratamiento(request, response);
    }  else if (!accion.equals("buscarPresupuestoPago")) {
      
    }
  }
  
  
  
  


  

  private void eliminarPresupuesto(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodigoPresupuesto"));
    
    boolean rpta = PacienteBD.EliminarPresupuesto(cod);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men = Se elimino el Presupuesto correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men = No se elimino el Presupuesto correctamente");
    }
  }
  
  
  
  private void actualizarTratamiento(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
    String pieza = request.getParameter("txtPieza");
    String presupuesto = request.getParameter("txtPresupuesto");
    Double precio = Double.valueOf(Double.parseDouble(request.getParameter("txtPrecio")));
    String usuario = request.getParameter("txtUsuario");
    String fecha2 = request.getParameter("txtFecha");
    String Estado = request.getParameter("txtEstado");
    
    Presupuesto p = new Presupuesto(codigo, pieza, presupuesto, precio.doubleValue(), usuario, fecha2, Estado);
    boolean rpta = PacienteBD.actualizarPresupuesto(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=Se actualizo de manera correcta");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se actualizo ");
    }
  }
  
  
  private void registrarPresupuesto(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodigoPaciente"));
    String pieza = request.getParameter("txtPieza");
    String tratamiento = request.getParameter("txtTratamiento");
    double precio = Double.parseDouble(request.getParameter("txtPrecio"));
    String usuario = request.getParameter("txtUsuario");
    
    Presupuesto p = new Presupuesto(cod, pieza, tratamiento, precio, usuario);
    
    boolean rpta = PacienteBD.InseretarPresupuesto(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=se Registro  correctamente");
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
