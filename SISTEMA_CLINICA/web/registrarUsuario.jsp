<%-- 
    Document   : registrarUsuario
    Created on : 25/05/2018, 12:11:58 AM
    Author     : OctavioHerrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<!DOCTYPE html>

<html>
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="stylesheet" href="estilos22.css"/>
        <%@include file="template1.jsp" %>
 
     </div>
        <div class="contenido">


<center>
 <form  action="ServletUsuarios" method="get">
    
   
     <br>          <h1>REGISTRAR USUARIO</h1>
                     <label>APELLIDO</label>
                   <input type="text" placeholder="Apellido" name="txtApellido" pattern="[A-Z]+"  required=""  title="SOLO MAYUSCULAS">
                    <label>NOMBRE</label>
                   <input type="text" placeholder="Nombre" name="txtNombre"  required=""  title="SOLO MAYUSCULAS">
        <br>               <label>PAIS</label>
                   <input type="text" placeholder="Pais" name="txtPais" pattern="[A-Z]+"  required=""  title="SOLO MAYUSCULAS">
                <label>PERFIO(ROL)</label>
                <input type="text" placeholder="FERFIL" name="txtPerfil" value="ASISTENTE" required="" readonly=""> 
      <br>     <label> CORREO</label>
                <input type="email" placeholder="CORREO" name="txtCorreo"   required=""  >

                  <label>CLAVE</label>
                   <input type="text" placeholder="CLAVE"  name="txtClave" >
                   <br> <label>ESTADO</label>
                  <input type="text" placeholder="ESTADO"  value="ACTIVO" name="txtEstado"pattern="[A-Z]+"  readonly=""  title="SOLO MAYUSCULAS" >

                     <br>   <input type="submit" value="Registrar" name="Registrarse" />

                 <input type="hidden" name="accion" value="RegistrarUsuario"/> 

 
                 
                 <h6>El ADMINISTRADOR solo puede crear usuarios de tipo ASISTENTE  </h6>
     </form> 
        </center>
    </div>
</html>
