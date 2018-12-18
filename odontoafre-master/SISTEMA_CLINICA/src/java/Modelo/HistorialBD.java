/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Utils.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author OCTAVIOH
 */
public class HistorialBD {
    
    
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
  
    
    
    
    
    
    
}
