<%-- 
    Document   : actualizarPaciente
    Created on : 23/05/2018, 10:58:48 AM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.Presupuesto"%>
<%@page import="Modelo.Presupuesto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.Paciente"%>
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
 
 
        
                    
                  <%
                ArrayList<Presupuesto> lista = DetallePaciente.obtenerCodPresupuesto(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista.size(); i++) {
                    Presupuesto d = lista.get(i);
            %>       
                    
                    
        
    <center>
         <h2 align="center">Actualizar Tratamiento </h2>
        
        <form action="ServletTratamientos" method="post">
            <table border="0" width="400" align="center">
                <tr>
                    <td>CodigoTratamiento</td>
                    <td><input type="text" name="txtCodigo" value="<%=d.getCodigo()%>" readonly=""></td>
                    
                </tr>   <tr>
                    <td>Numero de Pieza</td>
                    <td><input type="text" name="txtPieza" value="<%=d.getPieza()%>"></td>
                    
                </tr>    <tr>
                    <td>Tratamiento presupuestado</td>
                    <td><input type="text" style="text-transform:uppercase;" onkeyup="javascript:this.value=this.value.toUpperCase();" name="txtPresupuesto" value="<%=d.getTratamiento()%>"></td>
                    
                </tr> <tr>
                    <td>Precio Total del Tratamiento</td>
                    <td><input type="text" name="txtPrecio" value="<%=d.getPrecio()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Usuario quien realizo el tratamiento</td>
                    <td><input type="text" name="txtUsuario" value="<%=d.getUsuario()%>" readonly=""></td>
                    
                </tr>
            
                 <tr>
                    <td>Estado</td>
                    <td><input type="text" name="txtEstado" value="<%=d.getEstado()%>" readonly=""></td>
                    
                </tr>
                 
                <tr>
                    <th colspan="2"><input type="submit" value="Actualizar" name="btnActualizar"/></th>
                </tr>
               
                <input type="hidden" name="accion" value="ModificarTratamiento"/>
            </table>
        </form>  
    </center>    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </div>
    
          <%
            }
            %>
</html>
