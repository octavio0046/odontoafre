package Modelo;

import Utils.Conexion;
import java.io.PrintStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PagosBD
{
  public static double obtenerSaldo(int num, int num2)
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT SUM(A.PAGO),B.PRECIO \nFROM TB_PAGOS A,TB_PRESUPUESTO B \nWHERE A.COD_PRESUPUESTO=? AND A.ESTADO='ACTIVO' AND B.COD_PACIENTE=? AND A.COD_PRESUPUESTO=B.COD_PRESUPUESTO");
      
      c2.setInt(1, num);
      c2.setInt(2, num2);
      
      ResultSet rs = c2.executeQuery();
      rs.next();
      double Total;
      return Total = rs.getDouble(2) - rs.getDouble(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      double Total;
      return Total = 10.0D;
    }
  }
  
  public static ArrayList<PagoPaciente> obtenerPagoPresupuesto(int num)
  {
    ArrayList<PagoPaciente> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT A.ID_PAGO, A.COD_PACIENTE, A.COD_PRESUPUESTO, B.TRATAMIENTO, A.FECHA_PAGO, A.PAGO, A.SALDO, A.USUARIO, \nA.NO_RECIBO,A.ESTADO\nFROM TB_PAGOS A,TB_PRESUPUESTO B\n WHERE A.COD_PRESUPUESTO=? AND A.COD_PACIENTE=B.COD_PACIENTE AND A.COD_PRESUPUESTO=B.COD_PRESUPUESTO");
      
      cl.setInt(1, num);
      ResultSet rs = cl.executeQuery();
      while (rs.next())
      {
        PagoPaciente v = new PagoPaciente(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getDouble(7), rs.getString(8), rs.getInt(9), rs.getString(10));
        lista.add(v);
      }
    }
    catch (Exception e)
    {
      System.out.println(e);
    }
    return lista;
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
  
}
