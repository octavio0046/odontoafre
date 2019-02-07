
<%-- 
    Document   : obtenerPresupuesto
    Created on : 18/05/2018, 07:41:22 AM
    Author     : Octavio Herrera
--%>

<%@page import="Modelo.Presupuesto"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>

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
        <% ArrayList<Presupuesto> lista = DetallePaciente.obtenerPresupuestoPaciente(Integer.parseInt(request.getParameter("cod")));

            for (int i = 0; i < lista.size(); i++) {
                Presupuesto d = lista.get(i);
        %> 
        <%------empieza tabla-------%>
         <div class="table-responsive">
        <table class="table table-sm">
            <thead>
                <tr>
                    <th scope="col"># Presupuesto</th>
                    <th scope="col">Tratamiento</th>
                    <th scope="col">Pieza</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Fecha</th>
                    <th scope="col">Asignado Por:</th>
                    <th scope="col">Saldo de:</th>
                    <th scope="col">Eliminar</th>
                    <th scope="col">Actualizar</th>
                    <th scope="col">Realizar Pago</th>


                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row"><%= d.getCodigo()%></th>
                    <td><%= d.getTratamiento()%></td>
                    <td><%= d.getPieza()%></td>
                    <td><%= d.getPrecio()%></td>
                    <td><%= d.getFecha2()%></td>
                    <td><%= d.getUsuario()%></td>
                    <td>  <a href="formVerSaldoTratamiento.jsp?cod=<%= d.getCodigo_paciente()%>&cod2=<%=d.getCodigo()%>"
                             target="detalle" class="btn btn-primary" >Ver Saldos</a></td>

            <%        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


            %>

            <td><a href="eliminarTratamiento.jsp?cod=<%=d.getCodigo()%>">
                    <img src="eliminar.jpg" whit="30" height="30">
                </a></td>
            <td><a href="actualizarTratamiento.jsp?cod=<%=d.getCodigo()%>">
                    <img src="actualizar.png" whit="30" height="30">
                </a></td>
                <%                    }

                %>

            <th><a href="llenarReciboPago.jsp?cod=<%=d.getCodigo()%>">
                    <img src="recibo.png" whit="30" height="30">
                </a></th>
            </tr>

            <%

                }
            %>

            </tr>
            </tbody>
        </table>
         </div>
        <%---termina tabla----%>
        <center>

            <h4>TOTAL DEL LOS PRESUPUESTO</h4>
            <%
                DetallePaciente nuevo = new DetallePaciente();
                int Total = nuevo.obtenerPAGOSTotalesPacienteUNDia(Integer.parseInt(request.getParameter("cod")));
                // int totals=Integer.parseInt(request.getParameter("cod"));
                //String Final= String.valueOf(Total.getInt(1));
            %>
            <input value=<%out.println(Total);//out.println(Total);%> readonly=""> 
        </center>

<%---iframe muestra lo que esta en la paginformVerSaldoTratamiento-----%>
        <div style="margin: 0 auto; width:850px; ">
                <iframe name="detalle" width="850" height="300"  frameborder="0">

                </iframe> 

            </div>




    </div>
</html>
