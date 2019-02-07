<%-- 
    Document   : obtenerPagos
    Created on : 14/05/2018, 10:45:10 AM
    Author     : Octavio Herrera
--%>

<%@page import="Modelo.HistorialPaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.PagoPaciente"%>
<%@page import="Modelo.DetallePaciente"%>
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

        <center>
            <h1 >HISTORIAL DEL PACIENTE</h1>
        </center>




        <%            ArrayList<HistorialPaciente> lista = DetallePaciente.obtenerHistoPaciente(Integer.parseInt(request.getParameter("cod")));

            for (int i = 0; i < lista.size(); i++) {
                HistorialPaciente d = lista.get(i);
        %> 


        <%--inicio de la tabla---%>
        <div class="table-responsive">
        <table class="table table-bordered  table-sm">
            <thead>
                <tr>
                    <th scope="col">Historial</th>
                    <th scope="col">Paciente</th>
                    <th scope="col">Fecha Realizado</th>
                    <th scope="col">Pieza</th>
                    <th scope="col">Conducto</th>
                    <th scope="col">Conductometría</th>
                    <th scope="col">Base</th>
                    <th scope="col">OTB</th> 
                    <th scope="col">Observaciones</th>
                    <th scope="col">Usuario</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row"><%=d.getCod_historial()%></th>
                    <th scope="row"><%=d.getPaciente()%></th>
                    <td><%=d.getFecha_histo()%></td>
                    <td><%=d.getPieza()%></td>
                    <td><%=d.getConducto()%></td>
                    <td><%=d.getConductometria()%></td>
                    <td><%=d.getBase()%></td>
                    <td><%=d.getOtb()%></td>
                    <td><%=d.getObservaciones()%></td>
                    <td><%=d.getUsuario()%></td>
               
                      <td><a href="eliminarHistorial.jsp?cod=<%=d.getCod_historial()%>">
                <img src="eliminar.jpg" whit="30" height="30">
            </a></td>
             <td><a href="actualizarHistorial.jsp?cod=<%=d.getCod_historial()%>">
                <img src="actualizar.png" whit="30" height="30">
            </a></td>
                </tr>
               
            </tbody>
            <%
                }
            %>

        </table>
            </div>
        <%--fin de la tabla---%>






       

       



    </tr>




</table>




</div>
</html>
