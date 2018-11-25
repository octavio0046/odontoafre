<%-- 
    Document   : obtenerPresupuesto
    Created on : 18/05/2018, 07:41:22 AM
    Author     : Octavio Herrera
--%>

<%@page import="Modelo.Presupuesto"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.*,java.util.*"%>
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
         <h2 align="center">Presupuesto del Paciente</h2>
        
        <table border="1" width="800" align="center">
            
            
            <tr bgcolor="skyblue">
                <th >CoPres</th> 
                <th >CoPaciente</th> 
                   <th>PIEZA</th> 
                   <th>TRATAMIENTO</th>  
                      <th>PRECIO</th> 
                       <th>USUARIO</th> 
                       <th colspan="2">FECHA/HORA</th> 
                             <th>ESTADO</th> 
                             <th>REALIZAR PAGO</th> 
            </tr>
            
            
            
      <%
                ArrayList<Presupuesto> lista = DetallePaciente.obtenerPresupuestoPaciente(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista.size(); i++) {
                    Presupuesto d = lista.get(i);
    %> 
            
       
            <tr > 
               
                
                 <td ><%= d.getCodigo()%></td>
                 
                 <td ><%= d.getCodigo_paciente()%></td>
                 
                 <td><%= d.getPieza()%></td>
                    
                <td><%= d.getTratamiento()%></td>
             
                  <td><%= d.getPrecio()%></td>
               
                  <td><%= d.getUsuario()%></td>  
           
                  <td colspan="2" ><%= d.getFecha2()%></td>
                    
                          <td><%= d.getEstado()%></td>
            
                       
                 <%        if (sesionOK.getAttribute("perfil") != null && sesionOK.getAttribute("perfil").equals("ADMIN")) {


                %>

                
                   <th><a href="eliminarTratamiento.jsp?cod=<%=d.getCodigo()%>">
                <img src="eliminar.jpg" whit="30" height="30">
               </a></th>
                       
            
                 <th><a href="actualizarTratamiento.jsp?cod=<%=d.getCodigo()%>">
                <img src="actualizar.png" whit="30" height="30">
               </a></th>
                
                
                 <%                    }

                %>
                
                
              
                
          
                  
                    
               
                  <th><a href="llenarReciboPago.jsp?cod=<%=d.getCodigo()%>">
                <img src="recibo.png" whit="30" height="30">
               </a></th>
            </tr>
         
             
        
            <%
              
            }
            %>
        </table>

        
        
        
        
        <h4>TOTAL DEL PRESUPUESTO</h4>
            
        <%
            DetallePaciente nuevo = new DetallePaciente();
            int Total = nuevo.obtenerPAGOSTotalesPacienteUNDia(Integer.parseInt(request.getParameter("cod")));
           // int totals=Integer.parseInt(request.getParameter("cod"));
            //String Final= String.valueOf(Total.getInt(1));
         
      %>
    
      <input value=<%out.println(Total);//out.println(Total);%> readonly=""> 
        
        
        
        
        
        
        
        
  
        </center>
  
     
    </body>
</html>
