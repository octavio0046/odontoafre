<%-- 
    Document   : obtenerPagosInter
    Created on : 13/06/2018, 03:31:09 PM
    Author     : OctavioHerrera
--%>


<%@page import="Modelo.PagosDia"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Paciente"%>
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
                    
                    
                    <style>
                        form{
                         width:  500px;
                         margin: auto;
                         padding: 20px;
                         background: #01A9DB;
                         font-size: 20px;
                         font-family: Verdana;
                         color:white;
                        }   
                        input[type=text]{
                        width: 80%;
                        padding: 5px;
                        font-size: 18px;   
                        }
                        input[type= submit]{
                            
                         padding: 5px;
                         font-size: 20px;
                         width: 100pz;
                        }
                        select{
                            
                        font-size: 20px;
                        padding: 5px;
                        background: #e0d3e8;
                        } 
                        
                        
                    </style>                   
                    
                    
                    


   <center>                 
        <h2 align="center">BUSCAR PAGOS INTERVALO DE FECHAS</h2>
           
            <form action="ServletPagos" method="get">
                <input type="hidden" name="accion" value="BuscarInterPagos" />
   
               
                    <label>DE</label>
                    <input type="date"  name="txtFecha"><br>
                    
                        <label>A</label>
                    <input type="date"  name="txtFecha2">
                  
                  <%--
                    <select name="txtFecha">
                        <option value="month">Month</option>
                         <option value="jenuary">Jenuary</option>
                          <option value="february">february</option>
         
                    </select> 
                    <select name="txtFecha">
                        
                    <option value="days">days</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    </select> 
                    
                    
                <select name="years">
                      
                    <option value="txtFecha">Years</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                </select> <br> <br>
                    
                     --%> 
                    <input type="submit"  name="btn" value="Buscar" >    
    
            </form>
                  <h6>Nota: el formato de la fecha debe de poner el año solamente con dos numeros por ejemplo "01/01/18"</h6> 
    </center>   
        
                    
             
        
    </div>
</html>
