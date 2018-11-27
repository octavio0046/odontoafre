<%-- 
    Document   : BuscarPaciente
    Created on : 11/05/2018, 12:47:00 PM
    Author     : Octavio Herrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Paciente"%>
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
                     <th><a href="formRegistrarPaciente.jsp"> Regisrar Pacientes</a> </th>
               

                <%                    }

if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ASISTENTE")) {



                %>
   <th><a href="ServletControlador?accion=BuscarPaciente"> Buscar Paciente</a> </th>
      <th><a href="formRegistrarPaciente.jsp"> Regisrar Pacientes</a> </th>

                
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
        <h2 align="center">BUSCAR PACIENTE</h2>
           
            <form action="ServletPacientes" method="get">
                <input type="hidden" name="accion" value="BuscarUNPaciente" />
               
               
                    
                    <label>Busque por Nombre</label>
                    <input type="text" placeholder="Nombre Paciente" name="txtNombre"  pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
                                   
                    <input type="submit"  name="btn" value="Buscar" >    
                    <h6>1. Busque por medio del primer nombre del paciente </h6>
                    <h6>2. El nombre debe escribirlo igual como lo escribio el paciente al registrarse </h6>
   
            </form>
            
    </center>   
        
        <h2 align="center">Lista de Pacientes</h2>  
        
        <table border="1" width="600" align="center">
            
            <tr bgcolor="skyblue">
                <th>Codigo</th><th>Apellido</th>
                <th>Apellido2</th>
                <th>Nombre</th>
                <th>Nombre2</th><th  >Fecha</th>
                <th>Direccion</th><th>Telefono Rec</th>
                <th>Tel 1</th><th>Tel 2</th>
                <th>Referido</th><th>Ocupacion</th>
                <th>DPI</th>
                <th></th>
                <th>ACCIONES</th>
                   <th></th>
                       <th></th>
  
            </tr>
            
            <%
            
            ArrayList<Paciente> lista =(ArrayList<Paciente>)request.getAttribute("lista");
            for(Paciente v: lista){
            %>    
            <tr>
                <td><%=v.getCodigo_paciente()%></td> 
                <td><%=v.getApellidos()%></td>
                <td><%=v.getApellidos2()%></td>
                <td><%=v.getNombres()%></td>
                 <td><%=v.getNombres2()%></td>
                <td   ><%=v.getFecha()%></td> 
                <td><%=v.getDireccion()%></td>
                <td><%=v.getTelefono_recidencial()%></td>
                <td><%=v.getTelefono1()%></td> 
                <td><%=v.getTelefono2()%></td>
                <td><%=v.getReferido()%></td>
                <td><%=v.getOcupacion()%></td>
                <td><%=v.getDpi()%></td>
                <th><a href="obtenerDetallePaciente.jsp?cod=<%=v.getCodigo_paciente()%>"
                       target="detalle">Ver Detalle</a></th>
                       
                       
                 <th><a href="fichaPaciente.jsp?cod=<%=v.getCodigo_paciente()%>">
                <img src="ficha.png" whit="30" height="30">
               </a></th>
                       
                       
                <%        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                %>
                       
                   <th><a href="eliminarPaciente.jsp?cod=<%=v.getCodigo_paciente()%>">
                <img src="eliminar.jpg" whit="30" height="30">
               </a></th>
                       
               
                 <th><a href="actualizarPaciente.jsp?cod=<%=v.getCodigo_paciente()%>">
                <img src="actualizar.png" whit="30" height="30">
               </a></th>
                       
               
               
               
                <%                    }

                %>
               
               
            </tr>
      
             
            
   
            
            
            
            
              <%
            }
            
            
            %>
          
            
            
        </table>
                    
          
                        
            <div style="margin: 0 auto; width:850px; ">
                <iframe name="detalle" width="850" height="300"  frameborder="0">
                    
                </iframe> 
                
            </div>      
                    
                 
             
        
    </body>
</html>
