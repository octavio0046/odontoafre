package Modelo;

public class Paciente
{
  int codigo_paciente;
  String apellidos;
  String apellidos2;
  String nombres;
  String nombres2;
  String fecha;
  String direccion;
  int telefono_recidencial;
  int telefono1;
  int telefono2;
  String referido;
  String ocupacion;
  String estado;
  String dpi;
  
  
 public Paciente(){
         
 }
  
  public String getDpi()
  {
    return this.dpi;
  }
  
  public void setDpi(String dpi)
  {
    this.dpi = dpi;
  }
  
  public Paciente(int codigo_paciente, String apellidos, String apellidos2, String nombres, String nombres2, String fecha, String direccion, int telefono_recidencial, int telefono1, int telefono2, String referido, String ocupacion, String estado, String dpi)
  {
    this.codigo_paciente = codigo_paciente;
    this.apellidos = apellidos;
    this.apellidos2 = apellidos2;
    this.nombres = nombres;
    this.nombres2 = nombres2;
    this.fecha = fecha;
    this.direccion = direccion;
    this.telefono_recidencial = telefono_recidencial;
    this.telefono1 = telefono1;
    this.telefono2 = telefono2;
    this.referido = referido;
    this.ocupacion = ocupacion;
    this.estado = estado;
    this.dpi = dpi;
  }
  
  public String getEstado()
  {
    return this.estado;
  }
  
  public void setEstado(String estado)
  {
    this.estado = estado;
  }
  
  public Paciente(int codigo_paciente, String apellidos, String apellidos2, String nombres, String nombres2, String fecha, String direccion, int telefono_recidencial, int telefono1, int telefono2, String referido, String ocupacion, String dpi)
  {
    this.codigo_paciente = codigo_paciente;
    this.apellidos = apellidos;
    this.apellidos2 = apellidos2;
    this.nombres = nombres;
    this.nombres2 = nombres2;
    this.fecha = fecha;
    this.direccion = direccion;
    this.telefono_recidencial = telefono_recidencial;
    this.telefono1 = telefono1;
    this.telefono2 = telefono2;
    this.referido = referido;
    this.ocupacion = ocupacion;
    this.dpi = dpi;
  }
  
  public Paciente(String apellidos, String apellidos2, String nombres, String nombres2, String fecha, String direccion, int telefono_recidencial, int telefono1, int telefono2, String referido, String ocupacion, String dpi)
  {
    this.dpi = dpi;
    this.apellidos = apellidos;
    this.apellidos2 = apellidos2;
    this.nombres = nombres;
    this.nombres2 = nombres2;
    this.fecha = fecha;
    this.direccion = direccion;
    this.telefono_recidencial = telefono_recidencial;
    this.telefono1 = telefono1;
    this.telefono2 = telefono2;
    this.referido = referido;
    this.ocupacion = ocupacion;
  }
  
  public Paciente(int codigo_paciente)
  {
    this.codigo_paciente = codigo_paciente;
  }
  
  public int getCodigo_paciente()
  {
    return this.codigo_paciente;
  }
  
  public void setCodigo_paciente(int codigo_paciente)
  {
    this.codigo_paciente = codigo_paciente;
  }
  
  public String getApellidos()
  {
    return this.apellidos;
  }
  
  public void setApellidos(String apellidos)
  {
    this.apellidos = apellidos;
  }
  
  public String getApellidos2()
  {
    return this.apellidos2;
  }
  
  public void setApellidos2(String apellidos2)
  {
    this.apellidos2 = apellidos2;
  }
  
  public String getNombres()
  {
    return this.nombres;
  }
  
  public void setNombres(String nombres)
  {
    this.nombres = nombres;
  }
  
  public String getNombres2()
  {
    return this.nombres2;
  }
  
  public void setNombres2(String nombres2)
  {
    this.nombres2 = nombres2;
  }
  
  public String getFecha()
  {
    return this.fecha;
  }
  
  public void setFecha(String fecha)
  {
    this.fecha = fecha;
  }
  
  public String getDireccion()
  {
    return this.direccion;
  }
  
  public void setDireccion(String direccion)
  {
    this.direccion = direccion;
  }
  
  public int getTelefono_recidencial()
  {
    return this.telefono_recidencial;
  }
  
  public void setTelefono_recidencial(int telefono_recidencial)
  {
    this.telefono_recidencial = telefono_recidencial;
  }
  
  public int getTelefono1()
  {
    return this.telefono1;
  }
  
  public void setTelefono1(int telefono1)
  {
    this.telefono1 = telefono1;
  }
  
  public int getTelefono2()
  {
    return this.telefono2;
  }
  
  public void setTelefono2(int telefono2)
  {
    this.telefono2 = telefono2;
  }
  
  public String getReferido()
  {
    return this.referido;
  }
  
  public void setReferido(String referido)
  {
    this.referido = referido;
  }
  
  public String getOcupacion()
  {
    return this.ocupacion;
  }
  
  public void setOcupacion(String ocupacion)
  {
    this.ocupacion = ocupacion;
  }
}
