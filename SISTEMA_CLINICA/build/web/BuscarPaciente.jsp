<%-- 
    Document   : BuscarPaciente
    Created on : 11/05/2018, 12:47:00 PM
    Author     : Octavio Herrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <script src="js/jquery.js" ></script>
        <script src="js/jquery.dataTables.min.js" ></script>

    </div>               

    <div class="contenido">       
        <center>                 
            <h2 align="center">BUSCAR PACIENTE</h2>
            <form action="ServletPacientes" method="get">
                <input type="hidden" name="accion" value="BuscarUNPaciente" />
                <label>Busque por Nombre</label>
                <input type="text"  name="txtFiltro"   style=" width: 250px; height: 50px;text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();" >
                <br> <br>  <input type="submit"  class="btn btn-success"  value="Buscar" >    
            </form>
        </center>   
        <h2 align="center">Lista de Pacientes</h2>  
        <div class="table-responsive-xl">
            <table class="table">
                <thead class="thead-light" >
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Primer Nombre</th>
                        <th scope="col">Primer Apellido</th>
                        <th scope="col">Segundo Apellido</th>
                        <th scope="col">telefono Principal</th>
                        <th scope="col">Referido de:</th>
                        <th scope="col">Ocupación</th>
                        <th scope="col">DPI</th>
                        <th scope="col">Detalle</th>
                        <th scope="col">Ficha</th>
                        <th scope="col">Eliminar</th>
                        <th scope="col">Actualizar</th>
                    </tr>
                </thead>
                <tbody>
                    <%  ArrayList<Paciente> lista = (ArrayList<Paciente>) request.getAttribute("lista");
                        for (Paciente v : lista) {
                    %>  

                    <tr>
                        <td><%=v.getCodigo_paciente()%></td>
                        <td><%=v.getNombres()%></td>
                        <td><%=v.getApellidos()%></td>
                        <td><%=v.getApellidos2()%></td>
                        <td><%=v.getTelefono1()%></td>
                        <td><%=v.getReferido()%></td>
                        <td><%=v.getOcupacion()%></td>
                        <td><%=v.getDpi()%></td>
                        <td><a href="obtenerDetallePaciente.jsp?cod=<%=v.getCodigo_paciente()%>"
                               target="detalle">Ver Detalle</a>
                        </td>
                        <td>
                            <a href="fichaPaciente.jsp?cod=<%=v.getCodigo_paciente()%>">
                                <img src="ficha.png" whit="30" height="30">
                            </a>
                        </td>
                        <%        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                        %>
                        <td><a href="eliminarPaciente.jsp?cod=<%=v.getCodigo_paciente()%>">
                                <img src="eliminar.jpg" whit="30" height="30">
                            </a>
                        </td>
                        <td>
                            <a href="actualizarPaciente.jsp?cod=<%=v.getCodigo_paciente()%>">
                                <img src="actualizar.png" whit="30" height="30">
                            </a>
                        </td>

                        <%                    }

                        %>
                    </tr>
                    <%                  }


                    %>
                </tbody>
            </table>
        </div>

        <div style="margin: 0 auto; width:850px; ">
            <iframe name="detalle" width="850" height="300"  frameborder="0">

            </iframe> 

        </div>      

    </div>
</html>
