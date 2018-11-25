<%-- 
    Document   : RegistrarImagen
    Created on : 14/06/2018, 08:24:19 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page session="false"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <%@include file="template1.jsp" %>
 
     </head>
    <body>

    <%
                            ArrayList<FormularioPaciente> lista = DetallePaciente.obtenerFormularioPaciente(Integer.parseInt(request.getParameter("cod")));
                          for (int i = 0; i < lista.size(); i++) {
                                FormularioPaciente d = lista.get(i);
           %>  
                    
                <h2 align="center">Cargar Imagen</h2>
        
    <center>

            <form action="subirImagen.jsp" enctype="multipart/form-data" method="post">
           <label>Imagen</label>
           <input type="file" name="file"/>

           <br><label>Codigo del paciente</label>
           <br><input type="text"  name="txtCodigoPaciente" value="<%= d.getCodigo()%>" readonly="">
           
           
          <br>  <input type="submit" value="Registrar" name="CargarImagen"/> 
           
            </form>
          
          </center>     

    
    
    
          <%
          }
          %>
    </body>
    
    
    
</html>
