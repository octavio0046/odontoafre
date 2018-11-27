package Modelo;

import Utils.Conexion;
import java.io.PrintStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PacienteBD
{
  public static boolean insertarImagen(Imagenes p)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call REGISTRAR_IMAGEN(?,?,?,?)}");
      cl.setInt(1, p.getCodigoPaciente());
      cl.setString(2, p.getNombre());
      cl.setString(3, p.getObservaciones());
      cl.setString(4, p.getImagen());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean EliminarHistorial(int cod)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call ELIMINAR_HISTORIAL(?)}");
      cl.setInt(1, cod);
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean actualizarHistorial(HistorialPaciente varproducto)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      
      CallableStatement cl = cn.prepareCall("{call ACTUALIZAR_HISTORIAL(?,?,?,?,?,?,?,?,?)}");
      cl.setInt(1, varproducto.getCod_historial());
      cl.setDouble(2, varproducto.getPieza());
      cl.setString(3, varproducto.getConducto());
      cl.setString(4, varproducto.getConductometria());
      cl.setString(5, varproducto.getBase());
      cl.setString(6, varproducto.getOtb());
      cl.setString(7, varproducto.getObservaciones());
      cl.setString(8, varproducto.getUsuario());
      cl.setString(9, varproducto.getEstado());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean InseretarHistorial(HistorialPaciente p)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call INSERTAR_HISTORIAL(?,?,?,?,?,?,?,?)}");
      cl.setInt(1, p.getPaciente());
      cl.setDouble(2, p.getPieza());
      cl.setString(3, p.getConducto());
      cl.setString(4, p.getConductometria());
      cl.setString(5, p.getBase());
      cl.setString(6, p.getOtb());
      cl.setString(7, p.getObservaciones());
      cl.setString(8, p.getUsuario());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean actualizarUsuario(Usuarios varproducto)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      
      CallableStatement cl = cn.prepareCall("{call ACTUALIZAR_USUARIO(?,?,?,?,?,?,?,?,?)}");
      cl.setInt(1, varproducto.getCodigo_usuario());
      cl.setString(2, varproducto.getApellido_usuario());
      cl.setString(3, varproducto.getNombre_usuario());
      cl.setString(4, varproducto.getPais());
      cl.setString(5, varproducto.getPerfil());
      cl.setString(6, varproducto.getCorreo());
      cl.setString(7, varproducto.getClave());
      cl.setString(8, varproducto.getFecha());
      cl.setString(9, varproducto.getEstado());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean actualizarPresupuesto(Presupuesto varproducto)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      
      CallableStatement cl = cn.prepareCall("{call ACTUALIZAR_PRESUPUESTO(?,?,?,?,?,?,?)}");
      cl.setInt(1, varproducto.getCodigo());
      cl.setString(2, varproducto.getPieza());
      cl.setString(3, varproducto.getTratamiento());
      cl.setDouble(4, varproducto.getPrecio());
      cl.setString(5, varproducto.getUsuario());
      cl.setString(6, varproducto.getFecha2());
      cl.setString(7, varproducto.getEstado());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean actualizarPaciente(Paciente varproducto)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      
      CallableStatement cl = cn.prepareCall("{call ACTUALIZAR_PACIENTE(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
      cl.setInt(1, varproducto.getCodigo_paciente());
      cl.setString(2, varproducto.getApellidos());
      cl.setString(3, varproducto.getApellidos2());
      cl.setString(4, varproducto.getNombres());
      cl.setString(5, varproducto.getNombres2());
      cl.setString(6, varproducto.getFecha());
      cl.setString(7, varproducto.getDireccion());
      cl.setInt(8, varproducto.getTelefono_recidencial());
      cl.setInt(9, varproducto.getTelefono1());
      cl.setInt(10, varproducto.getTelefono2());
      cl.setString(11, varproducto.getReferido());
      cl.setString(12, varproducto.getOcupacion());
      cl.setString(13, varproducto.getDpi());
      cl.setString(14, varproducto.getEstado());
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean EliminarUsuario(int cod)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call ELIMINAR_USUARIOS(?)}");
      cl.setInt(1, cod);
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean EliminarPresupuesto(int cod)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call ELIMINAR_PRESUPUESTO(?)}");
      cl.setInt(1, cod);
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean EliminarPaciente(int cod)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call ELIMINAR_PACIENTE(?)}");
      cl.setInt(1, cod);
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean InseretarPresupuesto(Presupuesto p)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call INSERTAR_PRESUPUESTO(?,?,?,?,?)}");
      cl.setInt(1, p.getCodigo_paciente());
      cl.setString(2, p.getPieza());
      cl.setString(3, p.getTratamiento());
      cl.setDouble(4, p.getPrecio());
      cl.setString(5, p.getUsuario());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static int insertarPagoPaciente(PagosDia p)
  {
    int rs = 0;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{CALL INSERTAR_PAGO(?,?,?,?,?)}");
      cl.setInt(1, p.getCodigoPaciente());
      cl.setInt(2, p.getCodPresupuesto());
      cl.setDouble(3, p.getPago());
      cl.setString(4, p.getUsuario());
      cl.registerOutParameter(5, 4);
      
      int i = cl.executeUpdate();
      
      p.setRecibo(cl.getInt(5));
      rs = p.getRecibo();
    }
    catch (Exception localException) {}
    return rs;
  }
  
  public static boolean insertarUsuarios(Usuarios p)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call INSERTAR_USUARIOS(?,?,?,?,?,?,?)}");
      cl.setString(1, p.getApellido_usuario());
      cl.setString(2, p.getNombre_usuario());
      cl.setString(3, p.getPais());
      cl.setString(4, p.getPerfil());
      cl.setString(5, p.getCorreo());
      cl.setString(6, p.getClave());
      cl.setString(7, p.getEstado());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static boolean insertarPaciente(Paciente p)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call INSERTAR_PACIENTE(?,?,?,?,?,?,?,?,?,?,?,?)}");
      cl.setString(1, p.getApellidos());
      cl.setString(2, p.getApellidos2());
      cl.setString(3, p.getNombres());
      cl.setString(4, p.getNombres2());
      cl.setString(5, p.getFecha());
      cl.setString(6, p.getDireccion());
      cl.setInt(7, p.getTelefono_recidencial());
      cl.setInt(8, p.getTelefono1());
      cl.setInt(9, p.getTelefono2());
      cl.setString(10, p.getReferido());
      cl.setString(11, p.getOcupacion());
      cl.setString(12, p.getDpi());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static ArrayList<Paciente> obtenerUltimoPaciente()
  {
    ArrayList<Paciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT MAX(COD_PACIENTE) FROM  TB_PACIENTES");
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Paciente p = new Paciente(1);
        lista.add(p);
      }
    }
    catch (Exception localException) {}
    return lista;
  }
  
  public static boolean insertarFormularioPaciente(FormularioPaciente p)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      CallableStatement cl = cn.prepareCall("{call INSERTAR_FORMULARIO_PACIENTE(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
      cl.setInt(1, p.getCodigo());
      cl.setInt(2, p.getCuantas_veces());
      cl.setString(3, p.getHilo());
      cl.setString(4, p.getLengua());
      cl.setString(5, p.getSangra());
      cl.setString(6, p.getMotivo());
      cl.setString(7, p.getMolestais());
      cl.setString(8, p.getEs());
      cl.setString(9, p.getDuele());
      cl.setString(10, p.getInflamacion());
      cl.setString(11, p.getColor());
      cl.setString(12, p.getMal_aliento());
      cl.setInt(13, p.getUltima_vez());
      cl.setString(14, p.getEmbarazada());
      cl.setString(15, p.getMedicamento());
      cl.setString(16, p.getAnestesia());
      cl.setString(17, p.getExtraido());
      cl.setString(18, p.getHemorragias());
      cl.setString(19, p.getEnfermedad());
      cl.setString(20, p.getEnfermedad2());
      cl.setString(21, p.getHospitalizado());
      cl.setString(22, p.getPorque());
      
      int i = cl.executeUpdate();
      if (i == 1) {
        rpta = true;
      } else {
        rpta = false;
      }
    }
    catch (Exception localException) {}
    return rpta;
  }
  
  public static ArrayList<Paciente> obtenerPacientes()
  {
    ArrayList<Paciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall(" SELECT A.COD_PACIENTE,A.APELLIDOS,A.APELLIDOS2,A.NOMBRES,A.NOMBRES2,A.FECHA_NACIMIENTO,A.DIRECCION,A.TELEFONO_RECIDENCIAL,A.CELULAR1,A.CELULAR2,A.REFERIDO,A.OCUPACION,A.DPI\nFROM TB_PACIENTES A WHERE A.ESTADO='ACTIVO' ORDER BY A.COD_PACIENTE");
      
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Paciente v = new Paciente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12), rs.getString(13));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println("ventas-->" + e);
    }
    return lista;
  }
  
  public static ArrayList<Usuarios> obtenerUsuarios()
  {
    ArrayList<Usuarios> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall(" SELECT * FROM TB_USUARIOS WHERE ESTADO='ACTIVO'");
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Usuarios v = new Usuarios(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println("ventas-->" + e);
    }
    return lista;
  }
}
