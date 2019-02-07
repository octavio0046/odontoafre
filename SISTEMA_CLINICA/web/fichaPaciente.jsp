<%-- 
    Document   : fichaPaciente
    Created on : 12/05/2018, 10:12:47 PM
    Author     : Octavio Herrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<!DOCTYPE html>
<%
    response.setHeader("Pragma", "no-cache");
    response.addHeader("Cache-control", "must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);
    try {
        if (session.getAttribute("nom") == null) {

            request.getRequestDispatcher("index.jsp").forward(request, response);

        }
    } catch (Exception e) {

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>
<html>
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="template1.jsp" %>
    </div>
    <div class="contenido">
        <%     Paciente a = PacienteBD.obteneruNPaciente(Integer.parseInt(request.getParameter("cod")));
        %> 
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" ><a href="#">DPI: <%=a.getDpi()%></a></li>
                <li class="breadcrumb-item"><a href="#">Nombre: <%=a.getNombres()%></a></li>
                <li class="breadcrumb-item"><a href="#">Apellido: <%=a.getApellidos()%></a></li>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLongPacientes">
                    Ver Completos
                </button>
            </ol>
        </nav>    


        <%---inicia el collapso----%>  
        <div id="accordion">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            PRESUPUESTO PACIENTE
                        </button>
                    </h5>
                </div>

                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <%---empieza formulario de presupuesto-----%>
                        <center>
                            <h2>PRESUPUESTO PACIENTE</h2>
                            <form action="ServletTratamientos" method="get" >
                                <input name="txtUsuario" value="<%out.println(nom);%>" hidden=""/>
                                <input name="txtCodigoPaciente" value="<%= a.getCodigo_paciente()%>" hidden=""/>

                                <div class="form-group">
                                    <label for="exampleFormControlInput1">Numero de Pieza</label>
                                    <input type="number" step='0.01' value='0.00' placeholder="NO.PIEZA" name="txtPieza"  class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                                </div>

                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Tratamiento</label>
                                    <textarea name="txtTratamiento" style="width:500px;height:100px; text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="exampleFormControlInput1">Precio</label>
                                    <input type="number" step='0.01' value='0.00' name="txtPrecio"  class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                                </div>

                                <input type="hidden" name="accion" value="RegistrarPresupuesto" />
                                <input type="submit" class="btn btn-outline-success" value="Registrar" name="Registrarse" />


                                <br><br><a href="obtenerPresupuesto.jsp?cod=<%=a.getCodigo_paciente()%>" type="button" class="btn btn-primary btn-lg btn-block">Ver Presupuesto</a>
                            </form>                   
                        </center> 
                        <%--finaliza el formulario de presupuesto----%>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            HISTORIAL
                        </button>
                    </h5>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                    <div class="card-body">
                        <%----INICIA EL FORMULARIO DEL HISTORIAL-----%>
                        <center>
                            <form action="ServletHistorial" method="get">
                                <input type="hidden"  name="txtCodigoPaciente" value="<%= a.getCodigo_paciente()%>" style="width:50px;height:15px" readonly="" >
                                <div class="form-group">
                                    <label for="exampleFormControlInput1">PIEZA</label>
                                    <input type="number" step='0.01' value='0.00' placeholder="PIEZA" name="txtPieza" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="exampleFormControlTextarea1">CONDUCTO</label>
                                        <textarea class="form-control"  name="txtConducto" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="exampleFormControlTextarea1">CONDUCTOMETRIA</label>
                                        <textarea class="form-control" name="txtConductometria" id="exampleFormControlTextarea1" rows="3"></textarea>  
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="exampleFormControlTextarea1">BASE</label>
                                        <textarea class="form-control"    name="txtBase" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="exampleFormControlTextarea1">CEMENTO</label>
                                        <textarea class="form-control"  name="txtOtb" id="exampleFormControlTextarea1" rows="3"></textarea>  
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-md-12">
                                        <label for="exampleFormControlTextarea1">OBSERVACIONES</label>
                                        <textarea class="form-control" name="txtObservaciones" id="exampleFormControlTextarea1" rows="3"></textarea>
                                    </div>
                                    <input type="hidden"  name="txtUsuario" value="<%out.println(nom);%>" style="width:150px;height:15px" readonly="">
                                
                                </div>

                                <input type="hidden" name="accion" value="RegistrarHistorial"/> 
                                <input type="submit" class="btn btn-outline-success" value="Registrar" name="Registrarse" />
                          <br><br><a href="obtenerHistorial.jsp?cod=<%=a.getCodigo_paciente()%>" type="button" class="btn btn-primary btn-lg btn-block">Ver HISTORIALES</a>
                            </form>
                        </center>
                        <%---TERMINA EL FORMULARIO DEL HISTORIAL------>
                          
                        <%---finaliza el collapso--%>



                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingThree">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            Collapsible Group Item #3
                        </button>
                    </h5>
                </div>
                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                    <div class="card-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                    </div>
                </div>
            </div>
        </div>

        <%----Empieza modal para ver la informacion del paciente----%>
        <!-- Button trigger modal -->
        <!-- Modal -->
        <div class="modal fade" id="exampleModalLongPacientes" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" style="width: 200; height:100;">

                        <div class="row">
                            <div class="col">
                                <label for="exampleInputEmail1">#</label>
                                <input type="text" value="<%=a.getCodigo_paciente()%>" class="form-control" readonly="">
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="exampleInputEmail1">Primer Nombre</label>
                                <input type="text" value="<%=a.getNombres()%>" class="form-control" readonly="">
                            </div>
                            <div class="col">
                                <label for="exampleInputEmail1">Segundo Nombre</label>
                                <input type="text" value="<%=a.getNombres2()%>" class="form-control" readonly="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="exampleInputEmail1">Primer Apellido</label>
                                <input type="text" value="<%=a.getApellidos()%>" class="form-control" readonly="">
                            </div>
                            <div class="col">
                                <label for="exampleInputEmail1">Segundo Apellido</label>
                                <input type="text" value="<%=a.getApellidos2()%>" class="form-control" readonly="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="exampleInputEmail1">Nacimiento</label>
                                <input type="text" value="<%=a.getFecha()%>" class="form-control" readonly="">
                            </div>
                            <div class="col">
                                <label for="exampleInputEmail1">Direccion</label>
                                <input type="text" value="<%=a.getDireccion()%>" class="form-control"readonly="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label for="exampleInputEmail1">Telefono Recidencial</label>
                                <input type="text" value="<%=a.getTelefono_recidencial()%>" class="form-control" readonly="">
                            </div>
                            <div class="col">
                                <label for="exampleInputEmail1">Telefono 1</label>
                                <input type="text" value="<%=a.getTelefono1()%>" class="form-control" readonly="">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="exampleInputEmail1">Telefono 2</label>
                                <input type="text" value="<%=a.getTelefono2()%>" class="form-control" readonly="">
                            </div>
                            <div class="col">
                                <label for="exampleInputEmail1">Referido</label>
                                <input type="text" value="<%=a.getReferido()%>" class="form-control" readonly="">
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <label for="exampleInputEmail1">Ocupación</label>
                                <input type="text" value="<%=a.getOcupacion()%>" class="form-control" readonly="">
                            </div>
                            <div class="col">
                                <label for="exampleInputEmail1">DPI</label>
                                <input type="text" value="<%=a.getDpi()%>" class="form-control" readonly="">
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <%---fin del modal para ver la informacion del paciente-----%>


    </div>
</html>
