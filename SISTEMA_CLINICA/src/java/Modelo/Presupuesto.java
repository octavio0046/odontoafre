package Modelo;

import java.sql.Timestamp;

public class Presupuesto
{
  private int codigo;
  private int codigo_paciente;
  private String pieza;
  private String tratamiento;
  private double precio;
  private String usuario;
  private Timestamp fecha;
  private String estado;
  private String fecha2;
  private double pago;
  private double saldo;

  
  ////constructor para obtener el saldo del presupuesto seleccionado PresupuestoBD obtenerSaldo
    public Presupuesto(double saldo,double precio) {
        this.saldo = saldo;
        this.precio=precio;
    }
 
  
    public Presupuesto(){}
  
  
  public Presupuesto(int cod_paciente, String pieza, String tratamiento, double precio, String usuario)
  {
    this.codigo_paciente = cod_paciente;
    this.pieza = pieza;
    this.tratamiento = tratamiento;
    this.precio = precio;
    this.usuario = usuario;
  }
  
  public Presupuesto(int cod_paciente, int codigo, double precio, String usuario)
  {
    this.codigo_paciente = cod_paciente;
    this.codigo = codigo;
    
    this.precio = precio;
    this.usuario = usuario;
  }
  
  public Presupuesto(int codigo, int codigo_paciente, String pieza, String tratamiento, double precio, String usuario, String fecha2, String estado)
  {
    this.codigo = codigo;
    this.codigo_paciente = codigo_paciente;
    this.pieza = pieza;
    this.tratamiento = tratamiento;
    this.precio = precio;
    this.usuario = usuario;
    this.fecha2 = fecha2;
    this.estado = estado;
  }
  
  
  //constructor para actualizar el tratamiento
  public Presupuesto(int codigo, String pieza, String tratamiento, double precio, String usuario, String estado)
  {
    this.codigo = codigo;
    this.pieza = pieza;
    this.tratamiento = tratamiento;
    this.precio = precio;
    this.usuario = usuario;
    this.estado = estado;
  }
  
  
    
  public double getPago()
  {
    return this.pago;
  }
  
  public void setPago(double pago)
  {
    this.pago = pago;
  }
  
  
  public int getCodigo()
  {
    return this.codigo;
  }
  
  public void setCodigo(int codigo)
  {
    this.codigo = codigo;
  }
  
  public int getCodigo_paciente()
  {
    return this.codigo_paciente;
  }
  
  public void setCodigo_paciente(int codigo_paciente)
  {
    this.codigo_paciente = codigo_paciente;
  }
  
  public String getPieza()
  {
    return this.pieza;
  }
  
  public void setPieza(String pieza)
  {
    this.pieza = pieza;
  }
  
  public String getTratamiento()
  {
    return this.tratamiento;
  }
  
  public void setTratamiento(String tratamiento)
  {
    this.tratamiento = tratamiento;
  }
  
  public double getPrecio()
  {
    return this.precio;
  }
  
  public void setPrecio(double precio)
  {
    this.precio = precio;
  }
  
  public String getUsuario()
  {
    return this.usuario;
  }
  
  public void setUsuario(String usuario)
  {
    this.usuario = usuario;
  }
  
  public Timestamp getFecha()
  {
    return this.fecha;
  }
  
  public void setFecha(Timestamp fecha)
  {
    this.fecha = fecha;
  }
  
  public String getEstado()
  {
    return this.estado;
  }
  
  public void setEstado(String estado)
  {
    this.estado = estado;
  }
  
  public String getFecha2()
  {
    return this.fecha2;
  }
  
  public void setFecha2(String fecha2)
  {
    this.fecha2 = fecha2;
  }
  
  public double getSaldo()
  {
    return this.saldo;
  }
  
  public void setSaldo(double saldo)
  {
    this.saldo = saldo;
  }
}
