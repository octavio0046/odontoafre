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
}
