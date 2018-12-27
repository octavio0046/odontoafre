
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

<html>
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos22.css"/>
        <%@include file="template1.jsp" %>  
    </div>
    <div class="contenido">
        <center>
            <h2 align="center">Presupuesto del Paciente</h2>
            <table border="1" width="800" align="center">
                <tr bgcolor="skyblue">
                    <th >Codigo del Presupuesto</th> 
                    <th >Codigo del Paciente</th> 
                    <th>PIEZA</th> 
                    <th>TRATAMIENTO</th>  
                    <th>PRECIO</th> 
                    <th>USUARIO</th> 
                    <th colspan="2">FECHA/HORA</th> 
                    <th>REALIZAR PAGO</th> 
                </tr>

                <%          ArrayList<Presupuesto> lista = DetallePaciente.obtenerPresupuestoPaciente(Integer.parseInt(request.getParameter("cod")));

                    for (int i = 0; i < lista.size(); i++) {
                        Presupuesto d = lista.get(i);
                %> 
                <tr > 
                    <td ><%= d.getCodigo()%></td>
                    <td ><%= d.getCodigo_paciente()%></td>
                    <td><%= d.getPieza()%></td>
                    <td><%= d.getTratamiento()%></td>
                    <td><%= d.getPrecio()%></td>
                    <td><%= d.getUsuario()%></td>  
                    <td colspan="2" ><%= d.getFecha2()%></td>

                    <%        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                    %>

                    <th><a href="eliminarTratamiento.jsp?cod=<%=d.getCodigo()%>">
                            <img src="eliminar.jpg" whit="30" height="30">
                        </a></th>
                    <th><a href="actualizarTratamiento.jsp?cod=<%=d.getCodigo()%>">
                            <img src="actualizar.png" whit="30" height="30">
                        </a></th>

                    <%                    }

                    %>

                    <th><a href="llenarReciboPago.jsp?cod=<%=d.getCodigo()%>">
                            <img src="recibo.png" whit="30" height="30">
                        </a></th>
                </tr>
                <%

                    }
                %>
            </table>
            <h4>TOTAL DEL PRESUPUESTO</h4>
            <%
                DetallePaciente nuevo = new DetallePaciente();
                int Total = nuevo.obtenerPAGOSTotalesPacienteUNDia(Integer.parseInt(request.getParameter("cod")));
                // int totals=Integer.parseInt(request.getParameter("cod"));
                //String Final= String.valueOf(Total.getInt(1));

            %>
            <input value=<%out.println(Total);//out.println(Total);%> readonly=""> 
        </center>
    </div>
</html>
