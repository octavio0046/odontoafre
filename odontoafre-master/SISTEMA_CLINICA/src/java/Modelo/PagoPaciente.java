package Modelo;

public class PagoPaciente
{
  private int cod_pago;
  private int cod_paciente;
  private int cod_presupuesto;
  private String concepto;
  private String fecha;
  private double presupuesto;
  private double pago;
  private double saldo;
  private String usuario;
  private int numero_recibo;
  private String estado;
  
  public PagoPaciente(int cod_paciente, int cod_presupuesto, String concepto, double pago, String usuario)
  {
    this.cod_presupuesto = cod_presupuesto;
    this.cod_paciente = cod_paciente;
    this.concepto = concepto;
    this.pago = pago;
    this.usuario = usuario;
  }
  
  public PagoPaciente(int cod_paciente, int cod_presupuesto, double pago, String usuario)
  {
    this.cod_paciente = cod_paciente;
    this.cod_presupuesto = cod_presupuesto;
    this.pago = pago;
    this.usuario = usuario;
  }
  
  public PagoPaciente(int cod_pago, int cod_paciente, int cod_presupuesto, String concepto, String fecha, double pago, double saldo, String usuario, int numero_recibo, String estado)
  {
    this.cod_pago = cod_pago;
    this.cod_paciente = cod_paciente;
    this.cod_presupuesto = cod_presupuesto;
    this.concepto = concepto;
    this.fecha = fecha;
    this.pago = pago;
    this.saldo = saldo;
    this.usuario = usuario;
    this.numero_recibo = numero_recibo;
    this.estado = estado;
  }
  
  public String getEstado()
  {
    return this.estado;
  }
  
  public void setEstado(String estado)
  {
    this.estado = estado;
  }
  
  public PagoPaciente(int cod_paciente, String concepto, double presupuesto, double pago, double saldo, String usuario)
  {
    this.cod_paciente = cod_paciente;
    this.concepto = concepto;
    
    this.presupuesto = presupuesto;
    this.pago = pago;
    this.saldo = saldo;
    this.usuario = usuario;
  }
  
  public int getCod_pago()
  {
    return this.cod_pago;
  }
  
  public void setCod_pago(int cod_pago)
  {
    this.cod_pago = cod_pago;
  }
  
  public int getCod_paciente()
  {
    return this.cod_paciente;
  }
  
  public void setCod_paciente(int cod_paciente)
  {
    this.cod_paciente = cod_paciente;
  }
  
  public String getConcepto()
  {
    return this.concepto;
  }
  
  public void setConcepto(String concepto)
  {
    this.concepto = concepto;
  }
  
  public String getFecha()
  {
    return this.fecha;
  }
  
  public void setFecha(String fecha)
  {
    this.fecha = fecha;
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
    return this.usuario;
  }
  
  public void setUsuario(String usuario)
  {
    this.usuario = usuario;
  }
  
  public int getNumero_recibo()
  {
    return this.numero_recibo;
  }
  
  public void setNumero_recibo(int numero_recibo)
  {
    this.numero_recibo = numero_recibo;
  }
  
  public int getCod_presupuesto()
  {
    return this.cod_presupuesto;
  }
  
  public void setCod_presupuesto(int cod_presupuesto)
  {
    this.cod_presupuesto = cod_presupuesto;
  }
}
