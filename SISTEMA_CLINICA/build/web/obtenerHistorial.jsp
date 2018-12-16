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

    <table border="1" width="100" align="center"  >



        <tr bgcolor="skyblue" width="10%" >
            <th >CODIGO DEL HISTORIAL</th>
            <th >CODIGO DEL PACIENTE</th>
            <th >FECHA</th>
            <th >PIEZA</th>
            <th>CONDUCTO</th>
            <th >CONDUCTOMETRIA</th>
            <th>BASE</th><th>OTB</th>
            <th>OBSERVACIONES</th><th>USUARIO</th>
            <th>ESTADO</th>

        </tr>
        <%
            ArrayList<HistorialPaciente> lista = DetallePaciente.obtenerHistoPaciente(Integer.parseInt(request.getParameter("cod")));

            for (int i = 0; i < lista.size(); i++) {
                HistorialPaciente d = lista.get(i);
        %> 




        <tr style="width:80px;height:15px">
            <td ><%=d.getCod_historial()%></td>
            <td ><%=d.getPaciente()%></td> 
            <td><%=d.getFecha_histo()%></td> 
            <td><%=d.getPieza()%></td>
            <td><%=d.getConducto()%></td>
            <td><%=d.getConductometria()%></td>
            <td><%=d.getBase()%></td>
            <td><%=d.getOtb()%></td>
            <td><%=d.getObservaciones()%></td>
            <td><%=d.getUsuario()%></td>
            <td><%=d.getEstado()%></td>



            <%        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


            %>

            <th><a href="eliminarHistorial.jsp?cod=<%=d.getCod_historial()%>">
                    <img src="eliminar.jpg" whit="30" height="30">
                </a></th>
                <%                    }

                %>

            <th><a href="actualizarHistorial.jsp?cod=<%=d.getCod_historial()%>">
                    <img src="actualizar.png" whit="30" height="30">
                </a></th>



        </tr>


        <%
            }
        %>


    </table>




</div>
</html>
