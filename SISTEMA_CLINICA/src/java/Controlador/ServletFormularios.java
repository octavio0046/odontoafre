/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.DetallePaciente;
import Modelo.FormularioPaciente;
import Modelo.FormulariosBD;
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
@WebServlet(name = "ServletFormularios", urlPatterns = {"/ServletFormularios"})
public class ServletFormularios extends HttpServlet {

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
    if  (accion.equals("RegistrarFormularioPaciente")) {
      registrarFormulario(request, response);
     
    } 
  }



  
  
  
  private void registrarFormulario(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int codigo_paciente = Integer.parseInt(request.getParameter("txtCodigo"));
    String veces = request.getParameter("txtCuantas");
    String hilo = request.getParameter("txtHilo");
    String lengua = request.getParameter("txtLengua");
    String sangra = request.getParameter("txtCepillarse");
    String molestias = request.getParameter("txtMolestia");
    String motivo = request.getParameter("txtMotivo");
    String es = request.getParameter("txtEs");
    String duele = request.getParameter("txtDolor");
    String inflamacion = request.getParameter("txtInflamacion");
    String color = request.getParameter("txtColor");
    String aliente = request.getParameter("txtAliento");
    int ultima_vez = Integer.parseInt(request.getParameter("txtMeses"));
    String embarazada = request.getParameter("txtEmbarazada");
    String medicamento = request.getParameter("txtMedicamento");
    String anestesia = request.getParameter("txtAnestesia");
    String extraido_piezas = request.getParameter("txtPieza");
    String hemorragias = request.getParameter("txtHemorragia");
    String enfermedad = request.getParameter("txtEnfermedad");
    String henfermedad2 = request.getParameter("txtEnfermedad2");
    String hospitalizado = request.getParameter("txtHospitalizado");
    String porque = request.getParameter("txtPorque");
    
    FormularioPaciente p = new FormularioPaciente(codigo_paciente, ultima_vez, hilo, lengua, sangra, motivo, molestias, es, duele, inflamacion, color, aliente, ultima_vez, embarazada, medicamento, anestesia, extraido_piezas, hemorragias, enfermedad, henfermedad2, hospitalizado, porque);
    
    boolean rpta = FormulariosBD.insertarFormularioPaciente(p);
    if (rpta) {
     response.sendRedirect("fichaPaciente.jsp?cod="+codigo_paciente+"");;
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se regisro el paciente correctamente");
    }
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
