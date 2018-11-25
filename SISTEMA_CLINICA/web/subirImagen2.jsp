<%-- 
    Document   : subirImagen2
    Created on : 15/06/2018, 07:56:37 AM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false"%>
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
                    <h2 >Registrar Producto</h2>
        
        <form class="form-horizonal" action="ServletControlador" method="get">
            
         
                <%
                    String img=request.getParameter("img");
                    String cod2=request.getParameter("cod2");
                        
                %> 
                 
                
                
                <label> Codigo Paciente</label>
                <input type="text" name="txtCodPaciente" />
                       
         
                 <br>  <label>   Nombre</label>
                 <input type="text" name="txtNombre" pattern="[A-Z]+"  required="" title="SOLO MAYUSCULAS"/>
                       
        
                 <br><label>   Observaciones</label>
                    <input type="text" name="txtObservacion" pattern="[A-Z]+"  required="" title="SOLO MAYUSCULAS"/>
                       
                
               
                    <input type="submit" value="Registrar" name="CargarImagen"/>
                 
              
                <input type="hidden" name="txtImagen" value="<%=img%>"/>
                <input type="hidden" name="accion" value="RegistrarImagen"/>
                
  
            
        </form>
          </center>          
             
    

    </body>
</html>
