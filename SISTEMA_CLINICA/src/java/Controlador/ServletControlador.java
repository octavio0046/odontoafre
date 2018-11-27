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
    if  (accion.equals("RegistrarFormularioPaciente")) {
      registrarFormulario(request, response);
     
    } else if (accion.equals("RegistrarPagoPaciente")) {
      registrarPagoPaciente(request, response);
    } else if (accion.equals("RegistrarPresupuesto")) {
      registrarPresupuesto(request, response);
    
    } else if (accion.equals("EliminarPresupuesto")) {
      eliminarPresupuesto(request, response);
    } else if (accion.equals("ModificarTratamiento")) {
      actualizarTratamiento(request, response);
    } else if (accion.equals("MostrarUsuarios")) {
      mostrarUsuarios(request, response);
    } else if (accion.equals("EliminarUsuario")) {
      eliminarUsuarios(request, response);
    } else if (accion.equals("ModificarUsuario")) {
      actualizarUsuario(request, response);
    } else if (accion.equals("RegistrarUsuario")) {
      registrarUsuario(request, response);
    } else if (accion.equals("RegistrarHistorial")) {
      registrarHistorial(request, response);
    } else if (accion.equals("ModificarHistorial")) {
      actualizarHistorial(request, response);
    } else if (accion.equals("EliminarHistorial")) {
      eliminarHistorial(request, response);
    } else if (accion.equals("BuscarUnDiaPagos")) {
      BuscarUnPago(request, response);
    } else if (accion.equals("BuscarInterPagos")) {
      BuscarInterPagos(request, response);
    } else if (accion.equals("RegistrarImagen")) {
      registrarImagen(request, response);
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
    
    int rpta = PacienteBD.insertarPagoPaciente(p);
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
  
  private void BuscarInterPagos(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<PagosDia> lista = new ArrayList();
    lista = DetallePaciente.obtenerIntervaloPago(request.getParameter("txtFecha"), request.getParameter("txtFecha2"));
    
    request.setAttribute("lista", lista);
    request.getRequestDispatcher("PagosPagosIntervalo.jsp").forward(request, response);
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
  
  private void eliminarUsuarios(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int cod = Integer.parseInt(request.getParameter("txtCodigoUsuario"));
    
    boolean rpta = PacienteBD.EliminarUsuario(cod);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men = Se elimino el Usuario correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men = No se elimino el Usuario correctamente");
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
    boolean rpta = PacienteBD.actualizarUsuario(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=Se actualizo de manera correcta");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se actualizo ");
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
  
  private void mostrarUsuarios(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<Usuarios> lista = new ArrayList();
    lista = PacienteBD.obtenerUsuarios();
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
    
    boolean rpta = PacienteBD.insertarUsuarios(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=se Registro  correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se regisro  correctamente");
    }
  }
  
  private void registrarFormulario(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    int codigo = Integer.parseInt(request.getParameter("txtCodigo"));
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
    
    FormularioPaciente p = new FormularioPaciente(codigo, ultima_vez, hilo, lengua, sangra, motivo, molestias, es, duele, inflamacion, color, aliente, ultima_vez, embarazada, medicamento, anestesia, extraido_piezas, hemorragias, enfermedad, henfermedad2, hospitalizado, porque);
    
    boolean rpta = PacienteBD.insertarFormularioPaciente(p);
    if (rpta) {
      response.sendRedirect("mensaje2.jsp?men=se Registro el formulario del paciente correctamente");
    } else {
      response.sendRedirect("mensaje2.jsp?men=No se regisro el paciente correctamente");
    }
  }
  

  
  private void BuscarUnPago(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList<PagosDia> lista = new ArrayList();
    lista = DetallePaciente.obtenerUndiaPago(request.getParameter("txtFecha"));
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
