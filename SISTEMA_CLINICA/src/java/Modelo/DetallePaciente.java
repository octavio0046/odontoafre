package Modelo;

import Utils.Conexion;
import java.io.PrintStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DetallePaciente
{
  public static int UltimoPacienteRegistrado()
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT MAX(COD_PACIENTE) FROM  TB_PACIENTES ");
      
      ResultSet rs = c2.executeQuery();
      
      rs.next();
      int Total;
      return Total = rs.getInt(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      int Total;
      return Total = 'ʚ';
    }
  }
  
  public static int obtenerTotalPagosIntervalo(String num, String num2)
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT SUM(PAGO) FROM TB_PAGOS WHERE FECHA_PAGO BETWEEN ? AND ? ");
      c2.setString(1, num);
      c2.setString(2, num2);
      ResultSet rs = c2.executeQuery();
      
      rs.next();
      int Total;
      return Total = rs.getInt(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      int Total;
      return Total = 10;
    }
  }
  
  public static int UltimoRecibo()
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT MAX(NO_RECIBO)+1 FROM TB_PAGOS ");
      
      ResultSet rs = c2.executeQuery();
      
      rs.next();
      int Total;
      return Total = rs.getInt(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      int Total;
      return Total = 'ʚ';
    }
  }
  
  public static int obtenerTotalPagos(int num)
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT SUM(PAGO) FROM TB_PAGOS A WHERE A.COD_PACIENTE=? AND A.ESTADO='ACTIVO' ");
      c2.setInt(1, num);
      ResultSet rs = c2.executeQuery();
      
      rs.next();
      int Total;
      return Total = rs.getInt(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      int Total;
      return Total = 10;
    }
  }
  
  public static ArrayList<ReciboPago> obtenerPagoPacientePorRecibo(int num)
  {
    ArrayList<ReciboPago> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT  A.COD_PACIENTE,A.NOMBRES,A.APELLIDOS,A.CELULAR1,B.FECHA_PAGO,B.ID_PAGO,C.TRATAMIENTO,\nC.PRECIO,B.PAGO,B.SALDO,B.USUARIO,B.NO_RECIBO, C.COD_PRESUPUESTO\nFROM TB_PACIENTES A, TB_PAGOS B, TB_PRESUPUESTO  C\nWHERE A.COD_PACIENTE=B.COD_PACIENTE AND B.NO_RECIBO=? AND A.COD_PACIENTE=C.COD_PACIENTE\n AND B.COD_PRESUPUESTO=C.COD_PRESUPUESTO");
      
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        ReciboPago v = new ReciboPago(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDate(5), rs.getInt(6), rs.getString(7), rs.getDouble(8), rs.getDouble(9), rs.getDouble(10), rs.getString(11), rs.getInt(12), rs.getInt(13));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static int obtenerPAGOSTotalesPacienteUNDia(int num)
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT sum(PRECIO) FROM TB_PRESUPUESTO WHERE COD_PACIENTE=? AND ESTADO='ACTIVO'");
      c2.setInt(1, num);
      ResultSet rs = c2.executeQuery();
      
      rs.next();
      int Total;
      return Total = rs.getInt(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      int Total;
      return Total = 10;
    }
  }
  
  public static int obtenerPresupuestoTotalPaciente(int num)
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT sum(PRECIO) FROM TB_PRESUPUESTO WHERE COD_PACIENTE=? AND ESTADO='ACTIVO'");
      c2.setInt(1, num);
      ResultSet rs = c2.executeQuery();
      
      rs.next();
      int Total;
      return Total = rs.getInt(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      int Total;
      return Total = 10;
    }
  }
  
  public static ArrayList<Imagenes> obtenerImagenes(int num)
  {
    ArrayList<Imagenes> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT ID_IMAGEN,COD_PACIENTE,NOMBRE,OBSERVACION,IMAGEN FROM TB_IMAGENES WHERE COD_PACIENTE=?");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Imagenes v = new Imagenes(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<HistorialPaciente> ActualizarHistoPaciente(int num)
  {
    ArrayList<HistorialPaciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_HISTORIAL WHERE COD_HISTORIAL=?");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        HistorialPaciente v = new HistorialPaciente(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<HistorialPaciente> obtenerHistoPaciente(int num)
  {
    ArrayList<HistorialPaciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_HISTORIAL WHERE COD_PACIENTE=? AND ESTADO='ACTIVO'");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        HistorialPaciente v = new HistorialPaciente(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<Presupuesto> obtenerPresupuestoPaciente(int num)
  {
    ArrayList<Presupuesto> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_PRESUPUESTO WHERE COD_PACIENTE=? AND ESTADO='ACTIVO'");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Presupuesto v = new Presupuesto(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getString(8));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<Usuarios> obtenerCodUsuario(int num)
  {
    ArrayList<Usuarios> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_USUARIOS WHERE COD_USUARIO=? ");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Usuarios v = new Usuarios(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<Presupuesto> obtenerCodPresupuesto(int num)
  {
    ArrayList<Presupuesto> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_PRESUPUESTO WHERE COD_PRESUPUESTO=? ");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Presupuesto v = new Presupuesto(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getString(8));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<Presupuesto> obtenerTOTAL(int num)
  {
    ArrayList<Presupuesto> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_PRESUPUESTO WHERE COD_PRESUPUESTO=? ");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Presupuesto v = new Presupuesto(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getString(8));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<Paciente> obtenerPacienteCod(int num)
  {
    ArrayList<Paciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_PACIENTES WHERE COD_PACIENTE=?");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Paciente v = new Paciente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12), rs.getString(14), rs.getString(13));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<FormularioPaciente> obtenerFormularioPaciente(int num)
  {
    ArrayList<FormularioPaciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_FORMU_PACIENTE WHERE COD_PACIENTE=?");
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        FormularioPaciente v = new FormularioPaciente(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getInt(14), rs.getString(15), rs.getString(16), rs.getString(17), rs.getString(18), rs.getString(19), rs.getString(20), rs.getString(21), rs.getString(22), rs.getString(23));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<Paciente> obtenerUnPaciente(String nom)
  {
    ArrayList<Paciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_PACIENTES WHERE NOMBRES=? AND ESTADO='ACTIVO'");
      cl.setString(1, nom);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        Paciente v = new Paciente(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12), rs.getString(13));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<PagosDia> obtenerUndiaPago(String nom)
  {
    ArrayList<PagosDia> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT A.NOMBRES,A.APELLIDOS,B.CONCEPTO_PAGO,B.PRESUPUESTO,B.PAGO,B.SALDO FROM TB_PACIENTES A, TB_PAGOS B WHERE A.COD_PACIENTE=B.COD_PACIENTE AND FECHA_PAGO=?");
      cl.setString(1, nom);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        PagosDia v = new PagosDia(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getDouble(5), rs.getDouble(6));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
  
  public static ArrayList<PagosDia> obtenerIntervaloPago(String nom, String nom2)
  {
    ArrayList<PagosDia> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT B.FECHA_PAGO, A.NOMBRES,A.APELLIDOS,C.TRATAMIENTO,C.PRECIO,B.PAGO,B.SALDO \nFROM TB_PACIENTES A, TB_PAGOS B ,TB_PRESUPUESTO C\n WHERE A.COD_PACIENTE=B.COD_PACIENTE AND A.COD_PACIENTE=C.COD_PACIENTE\n AND B.COD_PRESUPUESTO=C.COD_PRESUPUESTO \n AND FECHA_PAGO BETWEEN ? AND ?");
      
      cl.setString(1, nom);
      cl.setString(2, nom2);
      
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        PagosDia v = new PagosDia(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getDouble(6), rs.getDouble(7));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
  }
}
