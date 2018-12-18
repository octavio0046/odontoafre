package Modelo;

public class PagosDia
{
  private int codigoPaciente;
  private int codPresupuesto;
  private double pago;
  private String usuario;
  private int recibo;
  private String fecha_pago;
  private String paciente;
  private String apellido;
  private String concepto;
  private double presupuesto;
  private double saldo;
  
  public String getFecha_pago()
  {
    return this.fecha_pago;
  }
  
  public void setFecha_pago(String fecha_pago)
  {
    this.fecha_pago = fecha_pago;
  }
  
  public PagosDia(int codPresupuesto, int codigoPaciente, double pago, String usuario)
  {
    this.codPresupuesto = codPresupuesto;
    this.codigoPaciente = codigoPaciente;
    this.pago = pago;
    this.usuario = usuario;
  }
  
  public int getCodigoPaciente()
  {
    return this.codigoPaciente;
  }
  
  public void setCodigoPaciente(int codigoPaciente)
  {
    this.codigoPaciente = codigoPaciente;
  }
  
  public int getCodPresupuesto()
  {
    return this.codPresupuesto;
  }
  
  public void setCodPresupuesto(int codPresupuesto)
  {
    this.codPresupuesto = codPresupuesto;
  }
  
  public String getUsuario()
  {
    return this.usuario;
  }
  
  public void setUsuario(String usuario)
  {
    this.usuario = usuario;
  }
  
  public int getRecibo()
  {
    return this.recibo;
  }
  
  public void setRecibo(int recibo)
  {
    this.recibo = recibo;
  }
  
  public PagosDia(String fecha_pago, String paciente, String apellido, String concepto, double presupuesto, double pago, double saldo)
  {
    this.fecha_pago = fecha_pago;
    this.paciente = paciente;
    this.apellido = apellido;
    this.concepto = concepto;
    this.presupuesto = presupuesto;
    this.pago = pago;
    this.saldo = saldo;
  }
  
  public PagosDia(String paciente, String apellido, String concepto, double presupuesto, double pago, double saldo)
  {
    this.paciente = paciente;
    this.apellido = apellido;
    this.concepto = concepto;
    this.presupuesto = presupuesto;
    this.pago = pago;
    this.saldo = saldo;
  }
  
  public String getPaciente()
  {
    return this.paciente;
  }
  
  public void setPaciente(String paciente)
  {
    this.paciente = paciente;
  }
  
  public String getApellido()
  {
    return this.apellido;
  }
  
  public void setApellido(String apellido)
  {
    this.apellido = apellido;
  }
  
  public String getConcepto()
  {
    return this.concepto;
  }
  
  public void setConcepto(String concepto)
  {
    this.concepto = concepto;
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
}
