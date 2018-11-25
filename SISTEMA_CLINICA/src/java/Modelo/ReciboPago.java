package Modelo;

import java.sql.Date;

public class ReciboPago
{
  private int cod_paciente;
  private String nombre;
  private String apellido;
  private int celular;
  private Date fecha;
  private int id_pago;
  private String Concepto;
  private double presupuesto;
  private double pago;
  private double saldo;
  private String Usuario;
  private int No_recibo;
  private int cod_presupesto;
  
  public ReciboPago(int cod_paciente, String nombre, String apellido, int celular, Date fecha, int id_pago, String Concepto, double presupuesto, double pago, double saldo, String Usuario, int No_recibo, int cod_prespuesto)
  {
    this.cod_paciente = cod_paciente;
    this.nombre = nombre;
    this.apellido = apellido;
    this.celular = celular;
    this.fecha = fecha;
    this.id_pago = id_pago;
    this.Concepto = Concepto;
    this.presupuesto = presupuesto;
    this.pago = pago;
    this.saldo = saldo;
    this.Usuario = Usuario;
    this.No_recibo = No_recibo;
    this.cod_presupesto = cod_prespuesto;
  }
  
  public int getCod_presupesto()
  {
    return this.cod_presupesto;
  }
  
  public void setCod_presupesto(int cod_presupesto)
  {
    this.cod_presupesto = cod_presupesto;
  }
  
  public int getCod_paciente()
  {
    return this.cod_paciente;
  }
  
  public void setCod_paciente(int cod_paciente)
  {
    this.cod_paciente = cod_paciente;
  }
  
  public String getNombre()
  {
    return this.nombre;
  }
  
  public void setNombre(String nombre)
  {
    this.nombre = nombre;
  }
  
  public String getApellido()
  {
    return this.apellido;
  }
  
  public void setApellido(String apellido)
  {
    this.apellido = apellido;
  }
  
  public int getCelular()
  {
    return this.celular;
  }
  
  public void setCelular(int celular)
  {
    this.celular = celular;
  }
  
  public Date getFecha()
  {
    return this.fecha;
  }
  
  public void setFecha(Date fecha)
  {
    this.fecha = fecha;
  }
  
  public int getId_pago()
  {
    return this.id_pago;
  }
  
  public void setId_pago(int id_pago)
  {
    this.id_pago = id_pago;
  }
  
  public String getConcepto()
  {
    return this.Concepto;
  }
  
  public void setConcepto(String Concepto)
  {
    this.Concepto = Concepto;
  }
  
  public double getPresupuesto()
  {
    return this.presupuesto;
  }
  
  public void setPresupuesto(double presupuesto)
  {
    this.presupuesto = presupuesto;
  }
  
  public double getPago()
  {
    return this.pago;
  }
  
  public void setPago(double pago)
  {
    this.pago = pago;
  }
  
  public double getSaldo()
  {
    return this.saldo;
  }
  
  public void setSaldo(double saldo)
  {
    this.saldo = saldo;
  }
  
  public String getUsuario()
  {
    return this.Usuario;
  }
  
  public void setUsuario(String Usuario)
  {
    this.Usuario = Usuario;
  }
  
  public int getNo_recibo()
  {
    return this.No_recibo;
  }
  
  public void setNo_recibo(int No_recibo)
  {
    this.No_recibo = No_recibo;
  }
}
