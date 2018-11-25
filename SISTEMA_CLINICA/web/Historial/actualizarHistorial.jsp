<%-- 
    Document   : actualizarHistorial
    Created on : 10/06/2018, 12:19:35 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.HistorialPaciente"%>
<%@page import="Modelo.HistorialPaciente"%>
<%@page import="Modelo.Usuarios"%>
<%@page import="Modelo.Usuarios"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="template1.jsp" %>
    </head>
    <body>
 
  
  
        <%
               
                ArrayList<HistorialPaciente> lista = DetallePaciente.ActualizarHistoPaciente(Integer.parseInt(request.getParameter("cod")));
           
                for (int i = 0; i < lista.size(); i++) {
                    HistorialPaciente d = lista.get(i);
            %> 
                  
                  
    <center>
        
         <h2 align="center">Actualizar Paciente</h2>
        
        <form action="ServletControlador" method="post">
            <table border="0" width="400" align="center">
                <tr>
                    <td>CodigoHisorial</td>
                    <td><input type="text" name="txtCodigo" value="<%=d.getCod_historial()%>" readonly=""></td>
                    
                </tr>      <tr>
                    <td>PIEZA</td>
                    <td><input type="number" step="0.01" name="txtPieza" value="<%=d.getPieza()%>"></td>
                    
                </tr> <tr>
                    <td>CONDUCTO</td>
           <td>  <textarea type="text"   name="txtConducto"  pattern="[A-Z]+"  style="width:250px;height:75px"  required=""  title="SOLO MAYUSCULAS"><%=d.getConducto()%></textarea></td>
                    
                </tr>
                 <tr>
                    <td>CONDUCTOMETRIA</td>
                   <td>   <textarea type="text"   name="txtConductometria" style="width:250px;height:75px" pattern="[A-Z]+"  required=""  title="SOLO MAYUSCULAS"><%=d.getConductometria()%></textarea></td>
                    
                </tr>
                 <tr>
                    <td>BASE</td>
              <td>   <textarea type="text"   name="txtBase" style="width:250px;height:75px" pattern="[A-Z]+"    required=""  title="SOLO MAYUSCULAS"><%=d.getBase()%></textarea></td>
     
                </tr>
                 <tr>
                    <td>OTB</td>
                  <td> <textarea type="text"   name="txtOtb" style="width:250px;height:75px" pattern="[A-Z]+"  equired=""  title="SOLO MAYUSCULAS"><%=d.getOtb()%></textarea></td>

                    
                </tr>
                
                  <tr>
                    <td>OBSERVACIONES</td>
              <td>    <textarea type="text"   name="txtObservaciones" style="width:250px;height:75px" pattern="[A-Z]+"  required=""  title="SOLO MAYUSCULAS"><%=d.getObservaciones()%></textarea></td>

                    
                </tr>
                 <tr>
                    <td>USUARIO</td>
                    <td><input type="text" name="txtUsuario" value="<%=d.getUsuario()%>" readonly=""></td>
                    
                </tr>
                
                <tr>
                    <td>ESTADO</td>
                    <td><input type="text" name="txtEstado" value="<%=d.getEstado()%>" ></td>
                    
                </tr>
                 
                <tr>
                    <th colspan="2"><input type="submit" value="Actualizar" name="btnActualizar"/></th>
                </tr>
               
                <input type="hidden" name="accion" value="ModificarHistorial"/>
            </table>
        </form>  
        </center>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
    
          <%
            }
            %>
</html>
