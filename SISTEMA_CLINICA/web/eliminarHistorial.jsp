<%-- 
    Document   : eliminarHistorial
    Created on : 10/06/2018, 06:03:00 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.HistorialPaciente"%>
<%@page import="Modelo.HistorialPaciente"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <%@include file="template1.jsp" %>
    </head>
    <body>

         <center>
             <%
               
                ArrayList<HistorialPaciente> lista = DetallePaciente.ActualizarHistoPaciente(Integer.parseInt(request.getParameter("cod")));
           
                for (int i = 0; i < lista.size(); i++) {
                    HistorialPaciente d = lista.get(i);
            %> 
                 
            
        
           <form action="ServletControlador" method="get">
               <label>Seguro que desea eliminar el historial con el codigo siguiente</label>
              

               <input type="text"  name="txtCodigoHistorial" style="width:80px;height:15px" value="<%= d.getCod_historial()%>" readonly="">
                
               
                <br>   <input type="submit" value="ELIMINAR" name="Registrarse" />
                             <input type="hidden" name="accion" value="EliminarHistorial"/> 
           </form>
           
           
         <%
          }
          %>
           </center>
    </body>
</html>
