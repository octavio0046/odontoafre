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
  
  
  
  
}
