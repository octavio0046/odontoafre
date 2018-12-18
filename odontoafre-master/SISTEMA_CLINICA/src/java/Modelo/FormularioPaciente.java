package Modelo;

public class FormularioPaciente
{
  int codigo_formulario;
  int codigo;
  int cuantas_veces;
  String hilo;
  String lengua;
  String sangra;
  String motivo;
  String molestais;
  String es;
  String duele;
  String inflamacion;
  String color;
  String mal_aliento;
  int ultima_vez;
  String embarazada;
  String medicamento;
  String anestesia;
  String extraido;
  String hemorragias;
  String enfermedad;
  String enfermedad2;
  String hospitalizado;
  String porque;
  
  public FormularioPaciente(int codigo_formulario, int codigo, int cuantas_veces, String hilo, String lengua, String sangra, String motivo, String molestais, String es, String duele, String inflamacion, String color, String mal_aliento, int ultima_vez, String embarazada, String medicamento, String anestesia, String extraido, String hemorragias, String enfermedad, String enfermedad2, String hospitalizado, String porque)
  {
    this.codigo_formulario = codigo_formulario;
    this.codigo = codigo;
    this.cuantas_veces = cuantas_veces;
    this.hilo = hilo;
    this.lengua = lengua;
    this.sangra = sangra;
    this.motivo = motivo;
    this.molestais = molestais;
    this.es = es;
    this.duele = duele;
    this.inflamacion = inflamacion;
    this.color = color;
    this.mal_aliento = mal_aliento;
    this.ultima_vez = ultima_vez;
    this.embarazada = embarazada;
    this.medicamento = medicamento;
    this.anestesia = anestesia;
    this.extraido = extraido;
    this.hemorragias = hemorragias;
    this.enfermedad = enfermedad;
    this.enfermedad2 = enfermedad2;
    this.hospitalizado = hospitalizado;
    this.porque = porque;
  }
  
  public FormularioPaciente() {}
  
  public int getCodigo_formulario()
  {
    return this.codigo_formulario;
  }
  
  public void setCodigo_formulario(int codigo_formulario)
  {
    this.codigo_formulario = codigo_formulario;
  }
  
  public FormularioPaciente(int codigo, int cuantas_veces, String hilo, String lengua, String sangra, String motivo, String molestais, String es, String duele, String inflamacion, String color, String mal_aliento, int ultima_vez, String embarazada, String medicamento, String anestesia, String extraido, String hemorragias, String enfermedad, String enfermedad2, String hospitalizado, String porque)
  {
    this.codigo = codigo;
    this.cuantas_veces = cuantas_veces;
    this.hilo = hilo;
    this.lengua = lengua;
    this.sangra = sangra;
    this.motivo = motivo;
    this.molestais = molestais;
    this.es = es;
    this.duele = duele;
    this.inflamacion = inflamacion;
    this.color = color;
    this.mal_aliento = mal_aliento;
    this.ultima_vez = ultima_vez;
    this.embarazada = embarazada;
    this.medicamento = medicamento;
    this.anestesia = anestesia;
    this.extraido = extraido;
    this.hemorragias = hemorragias;
    this.enfermedad = enfermedad;
    this.enfermedad2 = enfermedad2;
    this.hospitalizado = hospitalizado;
    this.porque = porque;
  }
  
  public FormularioPaciente(int codigo, int cuantas_veces, String hilo, String lengua, String sangra, String motivo, String molestais, String es, String duele)
  {
    this.codigo = codigo;
    this.cuantas_veces = cuantas_veces;
    this.hilo = hilo;
    this.lengua = lengua;
    this.sangra = sangra;
    this.motivo = motivo;
    this.molestais = molestais;
    this.es = es;
    this.duele = duele;
  }
  
  public int getCodigo()
  {
    return this.codigo;
  }
  
  public void setCodigo(int codigo)
  {
    this.codigo = codigo;
  }
  
  public int getCuantas_veces()
  {
    return this.cuantas_veces;
  }
  
  public void setCuantas_veces(int cuantas_veces)
  {
    this.cuantas_veces = cuantas_veces;
  }
  
  public String getHilo()
  {
    return this.hilo;
  }
  
  public void setHilo(String hilo)
  {
    this.hilo = hilo;
  }
  
  public String getLengua()
  {
    return this.lengua;
  }
  
  public void setLengua(String lengua)
  {
    this.lengua = lengua;
  }
  
  public String getSangra()
  {
    return this.sangra;
  }
  
  public void setSangra(String sangra)
  {
    this.sangra = sangra;
  }
  
  public String getMotivo()
  {
    return this.motivo;
  }
  
  public void setMotivo(String motivo)
  {
    this.motivo = motivo;
  }
  
  public String getMolestais()
  {
    return this.molestais;
  }
  
  public void setMolestais(String molestais)
  {
    this.molestais = molestais;
  }
  
  public String getEs()
  {
    return this.es;
  }
  
  public void setEs(String es)
  {
    this.es = es;
  }
  
  public String getDuele()
  {
    return this.duele;
  }
  
  public void setDuele(String duele)
  {
    this.duele = duele;
  }
  
  public String getInflamacion()
  {
    return this.inflamacion;
  }
  
  public void setInflamacion(String inflamacion)
  {
    this.inflamacion = inflamacion;
  }
  
  public String getColor()
  {
    return this.color;
  }
  
  public void setColor(String color)
  {
    this.color = color;
  }
  
  public String getMal_aliento()
  {
    return this.mal_aliento;
  }
  
  public void setMal_aliento(String mal_aliento)
  {
    this.mal_aliento = mal_aliento;
  }
  
  public int getUltima_vez()
  {
    return this.ultima_vez;
  }
  
  public void setUltima_vez(int ultima_vez)
  {
    this.ultima_vez = ultima_vez;
  }
  
  public String getEmbarazada()
  {
    return this.embarazada;
  }
  
  public void setEmbarazada(String embarazada)
  {
    this.embarazada = embarazada;
  }
  
  public String getMedicamento()
  {
    return this.medicamento;
  }
  
  public void setMedicamento(String medicamento)
  {
    this.medicamento = medicamento;
  }
  
  public String getAnestesia()
  {
    return this.anestesia;
  }
  
  public void setAnestesia(String anestesia)
  {
    this.anestesia = anestesia;
  }
  
  public String getExtraido()
  {
    return this.extraido;
  }
  
  public void setExtraido(String extraido)
  {
    this.extraido = extraido;
  }
  
  public String getHemorragias()
  {
    return this.hemorragias;
  }
  
  public void setHemorragias(String hemorragias)
  {
    this.hemorragias = hemorragias;
  }
  
  public String getEnfermedad()
  {
    return this.enfermedad;
  }
  
  public void setEnfermedad(String enfermedad)
  {
    this.enfermedad = enfermedad;
  }
  
  public String getEnfermedad2()
  {
    return this.enfermedad2;
  }
  
  public void setEnfermedad2(String enfermedad2)
  {
    this.enfermedad2 = enfermedad2;
  }
  
  public String getHospitalizado()
  {
    return this.hospitalizado;
  }
  
  public void setHospitalizado(String hospitalizado)
  {
    this.hospitalizado = hospitalizado;
  }
  
  public String getPorque()
  {
    return this.porque;
  }
  
  public void setPorque(String porque)
  {
    this.porque = porque;
  }
}
