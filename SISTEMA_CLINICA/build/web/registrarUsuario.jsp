<%-- 
    Document   : registrarUsuario
    Created on : 25/05/2018, 12:11:58 AM
    Author     : OctavioHerrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<!DOCTYPE html>
<%
    
    
    
    
     HttpSession objsesion = request.getSession(false);
    String usuario = (String) objsesion.getAttribute("perfil");
    if (usuario.equals("")) {

        response.sendRedirect("index.jsp");

    }
    
   
    String usu = "";
    String nom = "";
    HttpSession sesionOK = request.getSession();

    if (sesionOK.getAttribute("perfil") != null) {
        nom = (String) sesionOK.getAttribute("nom") + " " + (String) sesionOK.getAttribute("ape");

    }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="stylesheet" href="estilos22.css"/>
 
 <table border="0" width="1000" align="center">
            <tr bgcolor="skyblue" style="width: 50px; height: 50px;">
                <th><a href="index.jsp"> Inicio</a> </th>
                    <%                   if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                    %>

                  <th><a href="obtenerPagosInter.jsp"> Buscar Pagos En Intervalo</a> </th>
                <th><a href="registrarUsuario.jsp"> Regisrar Usuario</a> </th>
                
                    <%                }

                        
                    %>

         
                 

                <%        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                %>

                   <th><a href="ServletControlador?accion=MostrarUsuarios"> Mostrar Usuarios</a> </th>
                <th><a href="ServletControlador?accion=BuscarPaciente"> Buscar Paciente</a> </th>

                <%                    }

if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ASISTENTE")) {



                %>
<th><a href="ServletControlador?accion=BuscarPaciente"> Buscar Paciente</a> </th>
                
                 <%                    }



                %>
                
                
                <%if (sesionOK.getAttribute("perfil") != null) {

                        //si alguien ya inicio sesion entonces mostrar su nombre 
                %>
                <th><a href="ServletLogueo?accion=cerrar"> Cerrar Sesion</a> </th>
                <th width="200"><%out.println("Bienvenido:  " + nom);%>

                </th> 
                <%
                    }
                %>

                <%
                    //si alguien no ha iniciado sesion entonces muestra el iniciar sesion
                    if (sesionOK.getAttribute("perfil") == null) {


                %>
                <th with="200"><a href="login.jsp"> Iniciar Sesion</a> </th>
                    <%                }
                    %>



            </tr>  

        </table>
     </head>
    <body>


<center>
 <form  action="ServletControlador" method="get">
    
   
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
    </body>
</html>
