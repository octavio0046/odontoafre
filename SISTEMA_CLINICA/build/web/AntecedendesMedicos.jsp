<%-- 
    Document   : AntecedendesMedicos
    Created on : 10/05/2018, 06:22:12 PM
    Author     : Octavio Herrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Paciente"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <div class="encabezado">
        <%@include file="template1.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </div>
    <div class="contenido">




        <%--empieza formulario registro antecedentes medicos---%> 
        <center>
            <form action="ServletFormularios" method="get">
                <%                DetallePaciente nuevo = new DetallePaciente();
                    int Total = nuevo.UltimoPacienteRegistrado();
                    // int totals=Integer.parseInt(request.getParameter("cod"));
                    //String Final= String.valueOf(Total.getInt(1));

                %>
                <div class="form-group">
                    <label>Su codigo es</label>
                    <input type="text" name="txtCodigo" value="<%out.println(Total);%>" readonly="" ><br>
                    <%

                    %> 
                </div>

                <div class="form-group">
                    <label for="inputAddress">Cuantas veces se cepilla? (1 a 10)</label>
                    <input type="number" name="txtCuantas" min="1" max="10" required="Complete este Campo">
                </div>
                <div class="form-group">
                    <label for="inputAddress">Motivo de la consulta</label>
                    <input  type="text"  style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"   name="txtMotivo" class="form-control" id="inputAddress" placeholder="">
                </div>

                <div class="form-row">

                    <div class="form-group col-md-4">
                        <label for="inputState"> Hilo Dental</label>
                        <select id="inputState"  name="txtHilo"  class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState"> Limpia Lenguas</label>
                        <select id="inputState" name="txtLengua" class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                          
                        </select>
                    </div>
                </div>



                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputState">Sangra al Sepillarse</label>
                        <select id="inputState" name="txtCepillarse" class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState"> Molestias</label>
                        <select id="inputState"  name="txtMolestia" class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState"> Como es:</label>
                        <select id="inputState" name="txtEs" class="form-control">
                            <option selected>Choose...</option>
                            <option>FUERTE</option>
                            <option>MEDIO</option>
                            <option>LEVE</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputState"> Le gusta su color de Dientes</label>
                    <select id="inputState"  name="txtColor" class="form-control">
                        <option selected>Choose...</option>
                        <option>SI</option>
                        <option>NO</option>
                    </select>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputState">8.Duele al:</label>
                        <select id="inputState"  name="txtDolor" class="form-control">
                            <option selected>Choose...</option>
                            <option>Calor</option>
                            <option>Frio</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">9.Inflamación</label>
                        <select id="inputState"  name="txtInflamacion"  class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">11.Mal Aliento</label>
                        <select id="inputState" name="txtAliento" class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputState">12.Ultima Visita</label>
                        <select id="inputState" name="txtMeses" class="form-control">
                            <option selected>Meses</option>
                            <option>1</option>
                            <option>5</option>
                            <option>10</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">13. Embarazada</label>
                        <select id="inputState"   name="txtEmbarazada"  class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">14. Medicamento</label>
                        <select id="inputState"  name="txtMedicamento"  class="form-control">
                            <option selected>Choose...</option>
                            <option>NINGUNO</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputState">15.Anestesia</label>
                        <select id="inputState"  name="txtAnestesia" class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">16.Extracción</label>
                        <select id="inputState"  name="txtPieza"  class="form-control">
                            <option selected>Choose...</option>
                            <option>NINGUNO</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">17.Hemorragias</label>
                        <select id="inputState" name="txtHemorragia" class="form-control">
                            <option selected>Choose...</option>
                            <option>NINGUNO</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputState">18.Tiene Enfermedad</label>
                        <select id="inputState" name="txtEnfermedad" class="form-control">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">19.Enfermedad</label>
                        <select id="inputState" class="form-control" name="txtEnfermedad2">
                            <option selected>Choose...</optio
                            <option>NINGUNO</option>
                            <option>HIGADO</option>
                            <option>RIÑONES</option>
                            <option>CORAZON</option>
                            <option>ALERGIAS</option>
                            <option>DEABETES</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">20. Hospitalizado</label>
                        <select id="inputState" class="form-control" name="txtHospitalizado">
                            <option selected>Choose...</option>
                            <option>SI</option>
                            <option>NO</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">21. Motivo</label>
                    <input type="text"  style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"  name="txtPorque" class="form-control" id="inputAddress" placeholder="">
                </div>

                <input type="submit" value="Registrar" name="Registrarse" />
                <input type="hidden" name="accion" value="RegistrarFormularioPaciente"/>
            </form>
        </center>
        <%--termina formulario registro antecedentes medicos---%>          

    </div>
</html>
