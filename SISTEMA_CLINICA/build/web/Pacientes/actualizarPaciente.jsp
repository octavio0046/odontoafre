<%-- 
    Document   : actualizarPaciente
    Created on : 23/05/2018, 10:58:48 AM
    Author     : OctavioHerrera
--%>
<%@page session="false"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="template1.jsp" %>
  
    </head>
    <body>
 





             <%
                ArrayList<Paciente> lista = DetallePaciente.obtenerPacienteCod(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista.size(); i++) {
                    Paciente d = lista.get(i);
            %>       
                  
    <center>
        
         <h2 align="center">Actualizar HISTORIAL</h2>
        
        <form action="ServletControlador" method="post">
            <table border="0" width="400" align="center">
                <tr>
                    <td>CodigoPaciente</td>
                    <td><input type="text" name="txtCodigo" value="<%=d.getCodigo_paciente()%>" readonly=""></td>
                    
                </tr>   <tr>
                    <td>Primer Apellido</td>
                    <td><input type="text" name="txtApellido" value="<%=d.getApellidos()%>"></td>
                    
                </tr>    <tr>
                    <td>Segundo Apellido</td>
                    <td><input type="text" name="txtApellido2" value="<%=d.getApellidos2()%>"></td>
                    
                </tr> <tr>
                    <td>Primer Nombre</td>
                    <td><input type="text" name="txtNombre" value="<%=d.getNombres()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Segundo Nombre</td>
                    <td><input type="text" name="txtNombre2" value="<%=d.getNombres2()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Fecha de Nacimiento</td>
                    <td><input type="date" name="txtFecha" value="<%=d.getFecha()%>"></td>
     
                </tr>
                 <tr>
                    <td>Direccion</td>
                    <td><input type="text" name="txtDreccion" value="<%=d.getDireccion()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Telefono Recidencial</td>
                    <td><input type="text" name="txtRecidencial" value="<%=d.getTelefono_recidencial()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Cel 1</td>
                    <td><input type="text" name="txtCel" value="<%=d.getTelefono1()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Cel 2</td>
                    <td><input type="text" name="txtCel2" value="<%=d.getTelefono2()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Dr. Referido</td>
                    <td><input type="text" name="txtReferido" value="<%=d.getReferido()%>"></td>
                    
                </tr>
                 <tr>
                    <td>Ocupacion</td>
                    <td><input type="text" name="txtOcupacion" value="<%=d.getOcupacion()%>"></td>
                    
                </tr>
                 <tr>
                    <td>DPI</td>
                    <td><input type="text" name="txtdpi" value="<%=d.getDpi()%>"></td>
                    
                </tr>
                
                    <tr>
                    <td>Estado</td>
                    <td><input type="text" name="txtEstado" value="<%=d.getEstado()%>"></td>
                    
                </tr>
                <tr>
                    <th colspan="2"><input type="submit" value="Actualizar" name="btnActualizar"/></th>
                </tr>
               
                <input type="hidden" name="accion" value="ModificarPaciente"/>
            </table>
        </form>  
        
        
        
        </center>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
    
          <%
            }
            %>
</html>
