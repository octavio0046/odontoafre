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
import Modelo.Paciente;
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
@WebServlet(name = "ServletPacientes", urlPatterns = {"/ServletPacientes"})
public class ServletPacientes extends HttpServlet {

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
    if (accion.equals("RegistrarPaciente")) {
      registrarPaciente(request, response);
    } else if (accion.equals("BuscarPaciente")) {
      buscarPaciente(request, response);
    } else if (accion.equals("BuscarUNPaciente")) {
      buscarUNPaciente(request, response);
    }  else if (accion.equals("EliminarPaciente")) {
      eliminarPaciente(request, response);
    } else if (accion.equals("ModificarPaciente")) {
      actualizarPaciente(request, response);
    }
    }
  
  
  
  
  private void actualizarPaciente(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodigo"));
    String ape = request.getParameter("txtApellido");
    String ape2 = request.getParameter("txtApellido2");
    String nombre = request.getParameter("txtNombre");
    String nombre2 = request.getParameter("txtNombre2");
    String fecha = request.getParameter("txtFecha");
    String Direccion = request.getParameter("txtDreccion");
    int recidencial = Integer.parseInt(request.getParameter("txtRecidencial"));
    int telefono = Integer.parseInt(request.getParameter("txtCel"));
    int telefono2 = Integer.parseInt(request.getParameter("txtCel2"));
    String referido = request.getParameter("txtReferido");
    String ocupacion = request.getParameter("txtOcupacion");
    String estado = request.getParameter("txtEstado");
    String dpi = request.getParameter("txtdpi");
    
    Paciente p = new Paciente(cod, ape, ape2, nombre, nombre2, fecha, Direccion, recidencial, telefono, telefono2, referido, ocupacion, estado, dpi);
    boolean rpta = PacienteBD.actualizarPaciente(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=Se actualizo de manera correcta");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se actualizo ");
    }
  }
  
  private void eliminarPaciente(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodigoPaciente"));
    
    boolean rpta = PacienteBD.EliminarPaciente(cod);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men = Se elimino el Paciente correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men = No se elimino el paciente correctamente");
    }
  }
  
  
  private void buscarPaciente(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<Paciente> lista = new ArrayList();
    lista = PacienteBD.obtenerPacientes();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("BuscarPaciente.jsp").forward(request, response);
  }
  
  
  private void registrarPaciente(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    String ape = request.getParameter("txtApellido");
    String ape2 = request.getParameter("txtApellido2");
    String nom = request.getParameter("txtNombre");
    String nom2 = request.getParameter("txtNombre2");
    String naci = request.getParameter("txtNacimiento");
    String dire = request.getParameter("txtDireccion");
    int reciden = Integer.parseInt(request.getParameter("txtRecidencial"));
    int celuno = Integer.parseInt(request.getParameter("txtCelular1"));
    int celdos = Integer.parseInt(request.getParameter("txtCelular2"));
    String referencia = request.getParameter("txtReferencia");
    String ocupa = request.getParameter("txtOcupacion");
    String dpi = request.getParameter("txtdpi");
    
    Paciente p = new Paciente(ape, ape2, nom, nom2, naci, dire, reciden, celuno, celdos, referencia, ocupa, dpi);
    
    boolean rpta = PacienteBD.insertarPaciente(p);
    if (rpta) {
      response.sendRedirect("mensaje.jsp?men=se Registro paciente correctamente");
    } else {
      response.sendRedirect("mensaje.jsp?men=No se regisro el paciente correctamente");
    }
  }
  
 
  
  private void buscarUNPaciente(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<Paciente> lista = new ArrayList();
    lista = DetallePaciente.obtenerUnPaciente(request.getParameter("txtNombre"));
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("BuscarPaciente.jsp").forward(request, response);
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
