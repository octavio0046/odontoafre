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
         
 <%

            ArrayList<FormularioPaciente> lista = DetallePaciente.obtenerFormularioPaciente(Integer.parseInt(request.getParameter("cod")));

            for (int i = 0; i < lista.size(); i++) {

                FormularioPaciente d = lista.get(i);

        %>          
        <center>   
            <h2 align="center">PRESUPUESTO PACIENTE</h2>

            <form action="ServletTratamientos" method="get" align="left">
                <input type="hidden" name="accion" value="RegistrarPresupuesto" />

                <%if (sesionOK.getAttribute("perfil") != null) {

                        //si alguien ya inicio sesion entonces mostrar su nombre 
                %>

                <input type="hidden"  name="txtUsuario" value="<%out.println(nom);%>" style="width:150px;height:15px" readonly="">
                <%
                    }
                %>

                <label>NO. PIEZA</label>
                <input type="number" step='0.01' value='0.00' placeholder="NO.PIEZA" name="txtPieza"  style="width:200px;height:15px"  >

                <br>    <label>TRATAMIENTO</label> 
                <textarea type="text" placeholder="TRATAMIENTO" name="txtTratamiento" style="width:500px;height:100px; text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"></textarea>

                <br>   <label>PRECIO</label>
                <input type="number" step='0.01' value='0.00' placeholder="PRECIO" name="txtPrecio" style="width:200px;height:15px"  >


                <input  hidden="" type="text"  name="txtCodigoPaciente" value="<%= d.getCodigo()%>" style="width:50px;height:15px" readonly="">


                <center>

                    <br>   <input type="submit"  class="btn btn-outline-success" value="Ingresar" >    
                </center>

                <br>     

                <th><a href="obtenerPresupuesto.jsp?cod=<%=d.getCodigo()%>"
                       >Ver Detalle</a></th>

            </form>

        </center>  
        <%

            }
        %> 

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
 <h4 align="center">HISTORIAL DEL PACIENTE</h4>
        <table BORDER width="5%" heigth="50%" align="center"  >
            <form action="ServletHistorial" method="get">
                <tr bgcolor="#FF5733" width="50%" >
                    <th >PIEZA</th><th >CONDUCTO</th>
                    <th>CONDUCTOMETRIA</th><th>BASE</th>
                    <th>CEMENTO</th> <th>OBSERVACIONES</th> 
                </tr>
                <tr>
                <input type="hidden"  name="txtCodigoPaciente" value="<%= a.getCodigo_paciente()%>" style="width:50px;height:15px" readonly="" >
                <td>
                    <input type="number" step='0.01' value='0.00' placeholder="PIEZA" name="txtPieza"> 
                </td> 
                <td>
                    <textarea type="text"   name="txtConducto" style="width:150px;height:75px" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"   required="" ></textarea>
                </td> 
                <td>
                    <textarea type="text"   name="txtConductometria" style="width:150px;height:75px" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"  required=""  ></textarea>
                </td> 
                <td>
                    <textarea type="text"   name="txtBase" style="width:150px;height:75px"  style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"  required=""  ></textarea>
                </td> 
                <td>
                    <textarea type="text"   name="txtOtb" style="width:150px;height:75px" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"   required=""  ></textarea>
                </td> 
                <td>
                    <textarea type="text"   name="txtObservaciones" style="width:150px;height:75px" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();"  required=""  ></textarea>
                </td> 
                <%if (sesionOK.getAttribute("perfil") != null) {

                        //si alguien ya inicio sesion entonces mostrar su nombre 
                %>
                <input type="hidden"  name="txtUsuario" value="<%out.println(nom);%>" style="width:150px;height:15px" readonly="">
                <%
                    }
                %>
                <td colspan="10"> 
                    <input type="submit" class="btn btn-outline-success" value="Registrar" name="Registrarse" />
                </td>
                </tr>
                <input type="hidden" name="accion" value="RegistrarHistorial"/> 
                <br>     
                <th><a href="obtenerHistorial.jsp?cod=<%=a.getCodigo_paciente()%>">Ver Historial</a></th>
            </form>  
        </table>

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
        <%---finaliza el collapso--%>



      
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
