package Modelo;

import java.sql.Date;

public class HistorialPaciente
{
  private int cod_historial;
  private int paciente;
  private Date fecha_histo;
  private double pieza;
  private String conducto;
  private String conductometria;
  private String base;
  private String otb;
  private String observaciones;
  private String usuario;
  private String estado;
  private String fecha2;
  
  public String getFecha2()
  {
    return this.fecha2;
  }
  
  public void setFecha2(String fecha2)
  {
    this.fecha2 = fecha2;
  }
  
  public HistorialPaciente(int cod_historial, double pieza, String conducto, String conductometria, String base, String otb, String observaciones, String usuario, String estado)
  {
    this.cod_historial = cod_historial;
    this.pieza = pieza;
    this.conducto = conducto;
    this.conductometria = conductometria;
    this.base = base;
    this.otb = otb;
    this.observaciones = observaciones;
    this.usuario = usuario;
    this.estado = estado;
  }
  
  public HistorialPaciente(int cod_historial, int paciente, Date fecha_histo, double pieza, String conducto, String conductometria, String base, String otb, String observaciones, String usuario, String estado)
  {
    this.cod_historial = cod_historial;
    this.paciente = paciente;
    this.fecha_histo = fecha_histo;
    this.pieza = pieza;
    this.conducto = conducto;
    this.conductometria = conductometria;
    this.base = base;
    this.otb = otb;
    this.observaciones = observaciones;
    this.usuario = usuario;
    this.estado = estado;
  }
  
  public HistorialPaciente(int paciente, double pieza, String conducto, String conductometria, String base, String otb, String observaciones, String usuario)
  {
    this.paciente = paciente;
    this.pieza = pieza;
    this.conducto = conducto;
    this.conductometria = conductometria;
    this.base = base;
    this.otb = otb;
    this.observaciones = observaciones;
    this.usuario = usuario;
  }
  
  public int getCod_historial()
  {
    return this.cod_historial;
  }
  
  public void setCod_historial(int cod_historial)
  {
    this.cod_historial = cod_historial;
  }
  
  public Date getFecha_histo()
  {
    return this.fecha_histo;
  }
  
  public void setFecha_histo(Date fecha_histo)
  {
    this.fecha_histo = fecha_histo;
  }
  
  public String getEstado()
  {
    return this.estado;
  }
  
  public void setEstado(String estado)
  {
    this.estado = estado;
  }
  
  public int getPaciente()
  {
    return this.paciente;
  }
  
  public void setPaciente(int paciente)
  {
    this.paciente = paciente;
  }
  
  public double getPieza()
  {
    return this.pieza;
  }
  
  public void setPieza(double pieza)
  {
    this.pieza = pieza;
  }
  
  public String getConducto()
  {
    return this.conducto;
  }
  
  public void setConducto(String conducto)
  {
    this.conducto = conducto;
  }
  
  public String getConductometria()
  {
    return this.conductometria;
  }
  
  public void setConductometria(String conductometria)
  {
    this.conductometria = conductometria;
  }
  
  public String getBase()
  {
    return this.base;
  }
  
  public void setBase(String base)
  {
    this.base = base;
  }
  
  public String getOtb()
  {
    return this.otb;
  }
  
  public void setOtb(String otb)
  {
    this.otb = otb;
  }
  
  public String getObservaciones()
  {
    return this.observaciones;
  }
  
  public void setObservaciones(String observaciones)
  {
    this.observaciones = observaciones;
  }
  
  public String getUsuario()
  {
    return this.usuario;
  }
  
  public void setUsuario(String usuario)
  {
    this.usuario = usuario;
  }
}
