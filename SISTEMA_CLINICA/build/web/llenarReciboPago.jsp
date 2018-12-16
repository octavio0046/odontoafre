<%-- 
    Document   : llenarReciboPago
    Created on : 14/09/2018, 11:27:19 AM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.PagosBD"%>
<%@page import="Modelo.PresupuestoBD"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Presupuesto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
   
    <html>
        <div class="cabecera">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
         <%@include file="template1.jsp" %>
        </div>
        <div class="contenido">
        <center>
            <h2 align="center">Presupuesto del Paciente</h2>
            <table border="1" width="600" align="center">
                <form action="ServletPagos" method="get">
                    <tr bgcolor="skyblue">
                 
                        
                  
                        <th  >CodPres.</th> 
                        <th >CodPac.</th>
                        <th>TRATAMIENTO</th>  
                        <th>PRECIO</th>
                        <th>PAGO</th> 
                        <th>USUARIO</th> 
                    </tr>
                    <%
                        ArrayList<Presupuesto> lista = PresupuestoBD.obtenerUnPresupuesto(Integer.parseInt(request.getParameter("cod")));

                        for (int i = 0; i < lista.size(); i++) {
                            Presupuesto d = lista.get(i);
                    %> 
                    <tr > 
                        <td><input type="text" value="<%= d.getCodigo()%>"  name="txtCodPresu" style="width:80px;height:15px" readonly=""></td>
                        <td><input type="text" value="<%= d.getCodigo_paciente()%>"  name="txtCodPaciente" style="width:80px;height:15px" readonly="" ></td>
                        <td> <input type="text" value="<%= d.getTratamiento()%>"  name="txtTratamiento" style="width:200px;height:30px" readonly="" ></td>
                        <td><input type="text" value="<%= d.getPrecio()%>"  name="txtPrecio" style="width:80px;height:15px" readonly="" ></td>
                        <td><input type="text" value=""  name="txtPago" style="width:80px;height:15px" required=""></td>
                            <%if (sesionOK.getAttribute("perfil") != null) {
                                    //si alguien ya inicio sesion entonces mostrar su nombre 
                            %>
                        <td><input type="text" value="<%out.println(nom);%>"  name="txtUsuario" style="width:150px;height:15px" readonly="" ></td>
                            <%
                                }
                            %>
                        <td> <input type="submit" value="Realizar Pago" name="Registrarse" onclick="mostrarMensaje()" /></td>
                 
                    
                    <input type="hidden" name="accion" value="RegistrarPagoPresupuesto"/>
                </form>  
            </table>
            <th><a href="obtenerPagosPresupuesto.jsp?cod=<%= d.getCodigo()%>"
                   target="detalle">Ver Pagos</a></th>
        </table>
        <div style="margin: 0 auto; width:1000px; ">
            <iframe name="detalle" width="1000" height="300"  frameborder="0">
            </iframe> 
        </div>  
       
        <h4>SALDO DEL TRATAMIENTO SELECCIONADO</h4>
        <%
            PagosBD nuevo = new PagosBD();
           // double Total = nuevo.obtenerSaldo(Integer.parseInt(request.getParameter("cod")));
double Total = nuevo.obtenerSaldo(Integer.parseInt(request.getParameter("cod")),d.getCodigo_paciente());       
%>
        <input value=<%out.println(Total);%> readonly=""> 
        </div>
        </html>
 <%
            }
        %>