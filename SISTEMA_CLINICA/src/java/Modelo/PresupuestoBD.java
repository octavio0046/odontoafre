package Modelo;

import Utils.Conexion;
import java.io.PrintStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PresupuestoBD
{
  public static ArrayList<Presupuesto> obtenerUnPresupuesto(int num)
  {
    ArrayList<Presupuesto> lista = new ArrayList();
    try
    {
      CallableStatement cl = Conexion.getConexion().prepareCall("SELECT * FROM TB_PRESUPUESTO WHERE COD_PRESUPUESTO=? AND ESTADO='ACTIVO'");
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
  
  public static double obtenerPrecioPagoSaldo(int num)
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT A.PRECIO,B.PAGO,B.SALDO \nFROM  TB_PRESUPUESTO A,TB_PAGOS B \nWHERE A.COD_PRESUPUESTO = ? AND B.CONCEPTO_PAGO = A.TRATAMIENTO AND A.COD_PACIENTE=3 ");
      
      c2.setInt(1, num);
      
      ResultSet rs = c2.executeQuery();
      
      rs.next();
      double Dato1;
      return Dato1 = rs.getDouble(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      double Dato1;
      return Dato1 = 10.0D;
    }
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

  
  public static boolean actualizarPresupuesto(Presupuesto varproducto)
  {
    boolean rpta = false;
    try
    {
      Connection cn = Conexion.getConexion();
      
      CallableStatement cl = cn.prepareCall("{call ACTUALIZAR_PRESUPUESTO(?,?,?,?,?,?)}");
      cl.setInt(1, varproducto.getCodigo());
      cl.setString(2, varproducto.getPieza());
      cl.setString(3, varproducto.getTratamiento());
      cl.setDouble(4, varproducto.getPrecio());
      cl.setString(5, varproducto.getUsuario());
      cl.setString(6, varproducto.getEstado());
      
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
  
}
