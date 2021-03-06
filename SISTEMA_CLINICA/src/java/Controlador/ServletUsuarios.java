/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Imagenes;
import Modelo.PacienteBD;
import Modelo.Presupuesto;
import Modelo.Usuarios;
import Modelo.UsuariosBD;
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
@WebServlet(name = "ServletUsuarios", urlPatterns = {"/ServletUsuarios"})
public class ServletUsuarios extends HttpServlet {

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
    if  (accion.equals("MostrarUsuarios")) {
      mostrarUsuarios(request, response);
    } else if (accion.equals("EliminarUsuario")) {
      eliminarUsuarios(request, response);
    } else if (accion.equals("ModificarUsuario")) {
      actualizarUsuario(request, response);
    } else if (accion.equals("RegistrarUsuario")) {
      registrarUsuario(request, response);
    
     
    
      
    }
  }
  
  
  

  


  
  private void eliminarUsuarios(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodigoUsuario"));
    
    boolean rpta = UsuariosBD.EliminarUsuario(cod);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men = Se elimino el Usuario correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men = No se elimino el Usuario correctamente");
    }
  }
  
 
  
  private void actualizarUsuario(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
    String apellido = request.getParameter("txtApellido");
    String nombre = request.getParameter("txtNombre");
    String pais = request.getParameter("txtPais");
    String perfil = request.getParameter("txtPerfil");
    String correo = request.getParameter("txtCorreo");
    String clave = request.getParameter("txtClave");
    String fecha = request.getParameter("txtFecha");
    String estado = request.getParameter("txtEstado");
    
    Usuarios p = new Usuarios(codigo, apellido, nombre, pais, perfil, correo, clave, fecha, estado);
    boolean rpta = UsuariosBD.actualizarUsuario(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=Se actualizo de manera correcta");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se actualizo ");
    }
  }
  

  
  
 
  private void mostrarUsuarios(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<Usuarios> lista = new ArrayList();
    lista = UsuariosBD.obtenerUsuarios();
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("mostrarUsuarios.jsp").forward(request, response);
  }
  
  
  private void registrarUsuario(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    String ape = request.getParameter("txtApellido");
    String nom = request.getParameter("txtNombre");
    String pais = request.getParameter("txtPais");
    String perfil = request.getParameter("txtPerfil");
    String correo = request.getParameter("txtCorreo");
    String clave = request.getParameter("txtClave");
    String estado = request.getParameter("txtEstado");
    
    Usuarios p = new Usuarios(ape, nom, pais, perfil, correo, clave, estado);
    
    boolean rpta = UsuariosBD.insertarUsuarios(p);
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
