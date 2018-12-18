<%-- 
    Document   : eliminarTratamiento
    Created on : 23/05/2018, 08:05:07 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Presupuesto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<!DOCTYPE html>

<html>
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <%@include file="template1.jsp" %>>
    </div>
    <div class="contenido">

<center>
               <%
                ArrayList<Presupuesto> lista = DetallePaciente.obtenerCodPresupuesto(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista.size(); i++) {
                    Presupuesto d = lista.get(i);
            %> 
            
        
           <form action="ServletControlador" method="get">
               <label>Segudo que desea eliminar el tratamiento con el codigo siguiente</label>
              

               <input type="text"  name="txtCodigoPresupuesto" style="width:80px;height:15px" value="<%= d.getCodigo()%>" readonly="">
                
                <br>   <input type="submit" value="ELIMINAR" name="Registrarse" />
                             <input type="hidden" name="accion" value="EliminarPresupuesto"/> 
           </form>
           
           
         <%
          }
          %>
           </center>
    </div>
</html>
