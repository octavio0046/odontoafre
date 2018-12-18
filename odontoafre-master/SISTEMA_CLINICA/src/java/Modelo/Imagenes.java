package Modelo;

public class Imagenes
{
  private int cod_imagen;
  private int codigoPaciente;
  private String nombre;
  private String observaciones;
  private String imagen;
  
  public Imagenes(int cod_imagen, int codigoPaciente, String nombre, String observaciones, String imagen)
  {
    this.cod_imagen = cod_imagen;
    this.codigoPaciente = codigoPaciente;
    this.nombre = nombre;
    this.observaciones = observaciones;
    this.imagen = imagen;
  }
  
  public Imagenes(int codigoPaciente, String nombre, String observaciones, String imagen)
  {
    this.codigoPaciente = codigoPaciente;
    this.nombre = nombre;
    this.observaciones = observaciones;
    this.imagen = imagen;
  }
  
  public int getCod_imagen()
  {
    return this.cod_imagen;
  }
  
  public void setCod_imagen(int cod_imagen)
  {
    this.cod_imagen = cod_imagen;
  }
  
  public int getCodigoPaciente()
  {
    return this.codigoPaciente;
  }
  
  public void setCodigoPaciente(int codigoPaciente)
  {
    this.codigoPaciente = codigoPaciente;
  }
  
  public String getNombre()
  {
    return this.nombre;
  }
  
  public void setNombre(String nombre)
  {
    this.nombre = nombre;
  }
  
  public String getObservaciones()
  {
    return this.observaciones;
  }
  
  public void setObservaciones(String observaciones)
  {
    this.observaciones = observaciones;
  }
  
  public String getImagen()
  {
    return this.imagen;
  }
  
  public void setImagen(String imagen)
  {
    this.imagen = imagen;
  }
}
