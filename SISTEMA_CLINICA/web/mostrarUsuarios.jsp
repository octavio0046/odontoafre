<%-- 
    Document   : mostrarUsuarios
    Created on : 24/05/2018, 08:36:00 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false"%>

<!DOCTYPE html>

<html>
    <div class="cabecera">
         <%@include file="template1.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="stylesheet" href="estilos22.css"/>
  
  
  </div>
    <div class="contenido">

    <center>   <h2 align="1">USUARIOS</h2>  
        
        <table border="1" width="600" align="center">
            
            <tr bgcolor="skyblue">
                <th>Codigo</th><th>Apellido</th>
                <th>Nombre</th>
                <th>Pais</th>
                <th>Perfil</th><th>Correo</th>
                <th>Clave</th><th>Fecha</th><th>Estado</th>
         
              
                
                
            </tr>
            
            <%
            
            ArrayList<Usuarios> lista =(ArrayList<Usuarios>)request.getAttribute("lista");
            for(Usuarios v: lista){
            %>    
            <tr>
                <td><%=v.getCodigo_usuario()%></td>
                <td><%=v.getApellido_usuario()%></td>
                <td><%=v.getNombre_usuario()%></td>
                 <td><%=v.getPais()%></td>
                <td><%=v.getPerfil()%></td> 
                  <td><%=v.getCorreo()%></td>
                  <td><%=v.getClave()%></td>
                             <td><%=v.getFecha()%></td>
                  <td><%=v.getEstado()%></td>
                  
     <th><a href="eliminarUsuario.jsp?cod=<%=v.getCodigo_usuario()%>">
                <img src="eliminar.jpg" whit="30" height="30">
               </a></th>
                       
            
                 <th><a href="actualizarUsuario.jsp?cod=<%=v.getCodigo_usuario()%>">
                <img src="actualizar.png" whit="30" height="30">
               </a></th>
            
            
               
            </tr>
      
             
            
              
            
            
              <%
            }
            
            
            %>
          
            
            
        </table>
                    
          
                </center>
          
         
                    
          
    </div>
</html>
