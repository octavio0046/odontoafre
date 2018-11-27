<%-- 
    Document   : fichaPaciente
    Created on : 12/05/2018, 10:12:47 PM
    Author     : Octavio Herrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
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
                    
    <center>   
                <h2 align="center">PRESUPUESTO PACIENTE</h2>
           
                       <form action="ServletControlador" method="get" align="left">
                <input type="hidden" name="accion" value="RegistrarPresupuesto" />
                
                      <%if (sesionOK.getAttribute("perfil") != null) {

                                //si alguien ya inicio sesion entonces mostrar su nombre 
                        %>
           
                        <input type="hidden"  name="txtUsuario" value="<%out.println(nom);%>" style="width:150px;height:15px" readonly="">
                        <%
                            }
                        %>
                    
                    <label>NO. PIEZA</label>
                    <input type="number" step='0.01' value='0.00' placeholder="NO.PIEZA" name="txtPieza"  style="width:200px;height:15px"  >
                  
                    <br>    <label>TRATAMIENTO</label> 
                  <textarea type="text" placeholder="TRATAMIENTO" name="txtTratamiento"  style="width:500px;height:100px" pattern="[A-Z ]+"  title="SOLO MAYUSCULAS"></textarea>
               
                  <br>   <label>PRECIO</label>
                     <input type="number" step='0.01' value='0.00' placeholder="PRECIO" name="txtPrecio" style="width:200px;height:15px"  >
                       
                   
                     <input  hidden="" type="text"  name="txtCodigoPaciente" value="<%= d.getCodigo()%>" style="width:50px;height:15px" readonly="">
          
                     
                    <center>
                                   
                     <br>   <input type="submit"  name="btn" value="Ingresar" >    
                       </center>
                 
                   <br>     
            
                     <th><a href="obtenerPresupuesto.jsp?cod=<%=d.getCodigo()%>"
                       target="detalle2">Ver Detalle</a></th>
         
            </form>
   
               </center>      
                    
               
     <h4 align="center">HISTORIAL DEL PACIENTE</h4>

        <table BORDER width="5%" heigth="50%" align="center"  >
            <form action="ServletControlador" method="get">
                <tr bgcolor="#FF5733" width="50%" >
                    
                    <th >PIEZA</th><th >CONDUCTO</th>
                    <th>CONDUCTOMETRIA</th><th>BASE</th>
                    <th>CEMENTO</th> <th>OBSERVACIONES</th> 
                   

                </tr>

                <tr>
                    
                    
                 <input type="hidden"  name="txtCodigoPaciente" value="<%= d.getCodigo()%>" style="width:50px;height:15px" readonly="" >
          
                    
                    
         
                    
                      <td>
                       
                    <input type="number" step='0.01' value='0.00' placeholder="PIEZA" name="txtPieza"> 
                    </td> 
                    
                    
                    
                    <td>

                        <textarea type="text"   name="txtConducto" style="width:150px;height:75px"  required="" ></textarea>

                    </td> 
                    
                    
                       <td>

                        <textarea type="text"   name="txtConductometria" style="width:150px;height:75px" required=""  ></textarea>

                    </td> 
                    
                         <td>

                        <textarea type="text"   name="txtBase" style="width:150px;height:75px"   required=""  ></textarea>

                    </td> 
                 
                    
                         <td>

                        <textarea type="text"   name="txtOtb" style="width:150px;height:75px"  required=""  ></textarea>

                    </td> 
                    
                    
                        <td>

                        <textarea type="text"   name="txtObservaciones" style="width:150px;height:75px"  required=""  ></textarea>

                    </td> 
                 
               
                        <%if (sesionOK.getAttribute("perfil") != null) {

                                //si alguien ya inicio sesion entonces mostrar su nombre 
                        %>
                        <input type="hidden"  name="txtUsuario" value="<%out.println(nom);%>" style="width:150px;height:15px" readonly="">
                        <%
                            }
                        %>
                
                   
                    <td colspan="10"> 


                        <input type="submit" value="Registrar" name="Registrarse" />

                    </td>

                </tr>


                <input type="hidden" name="accion" value="RegistrarHistorial"/> 
                
                 <br>     
            
                     <th><a href="obtenerHistorial.jsp?cod=<%=d.getCodigo()%>">Ver Historial</a></th>
            </form>  

    
                       
        </table>
    
    
    
    
    
    
    
    
    
    
    
    
    
                  
      
  
                   
                   
                   <center>
                    <%-- esta linea activa la redireccion del registro de una imagen  
                        <a href="RegistrarImagen.jsp?cod=<%=d.getCodigo()%>">
                    --%>
                   
                    <a href="#">
           
                <img src="https://cdn.icon-icons.com/icons2/567/PNG/512/cloudup_icon-icons.com_54402.png" whit="80" height="80">
               </a>
                   
                  <%-- esta linea activa la redireccion para ver las imagenes registradas para el usuario
                      <a href="obtenerImagenes.jsp?cod=<%=d.getCodigo()%>">
                    --%>  
                    
               <a href="#">
           
                <img src="https://cdn.icon-icons.com/icons2/1320/PNG/512/-gallery_86860.png" whit="80" height="80">
               </a>      
                    
                       
        </center>
      
     <%
                    
                }
                %>    
                       
                       
                     
        

    </body>
</html>
