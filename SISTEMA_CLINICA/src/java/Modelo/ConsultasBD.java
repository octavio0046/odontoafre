/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.ResultSet;

/**
 *
 * @author OCTAVIOH
 */
public class ConsultasBD {

     public static double obtenerSaldos(int num, int num2)
  {
    try
    {
      CallableStatement c2 = Conexion.getConexion().prepareCall("SELECT B.PRECIO-SUM(A.PAGO) \n" +
"FROM TB_PAGOS A,TB_PRESUPUESTO B\n" +
" WHERE B.COD_PACIENTE=? AND A.ESTADO='ACTIVO'\n" +
" AND A.COD_PRESUPUESTO=? AND A.COD_PRESUPUESTO=B.COD_PRESUPUESTO");
      
      c2.setInt(1, num);
      c2.setInt(2, num2);
      
      ResultSet rs = c2.executeQuery();
      rs.next();
      double saldo;
      return saldo = rs.getDouble(1);
    }
    catch (Exception e)
    {
      System.out.println(e);
      double Total;
      return Total = 10.0D;
    }
  }
  
}
