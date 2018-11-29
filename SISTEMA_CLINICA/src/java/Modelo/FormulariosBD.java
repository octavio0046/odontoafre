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
public class FormulariosBD {
    
    
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
  
    
    
    
    
    
}
