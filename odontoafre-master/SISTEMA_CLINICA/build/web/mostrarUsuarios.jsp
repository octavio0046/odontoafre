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
        

          
         
           <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">APELLIDO</th>
      <th scope="col">NOMBRE</th>
      <th scope="col">PAIS</th>
       <th scope="col">PERFIL</th>
        <th scope="col">CORREO</th>
         <th scope="col">CLAVE</th>
          <th scope="col">FECHA CREACION</th>
           <th scope="col">ESTADO</th>
           <th scope="col" colspan="2">ACCIONES</th>
    </tr>
  </thead>
  <tbody>
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
      <td>
          
          <a href="eliminarUsuario.jsp?cod=<%=v.getCodigo_usuario()%>">
                <img src="eliminar.jpg" whit="30" height="30">
               </a>
          
      </td>
      
      
      <td>
          <a href="actualizarUsuario.jsp?cod=<%=v.getCodigo_usuario()%>">
                <img src="actualizar.png" whit="30" height="30">
               </a>
      </td>
    </tr>
 
  </tbody>
       <%
            }
            
            
            %>
          
</table> 
            
            
            
            
          
    </div>
</html>
