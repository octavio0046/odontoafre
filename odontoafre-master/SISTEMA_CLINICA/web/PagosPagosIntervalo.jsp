<%-- 
    Document   : PagosPagosIntervalo
    Created on : 13/06/2018, 06:26:56 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.PagosDia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<!DOCTYPE html>

<html>
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <%@include file="template1.jsp" %>
  
      </div>
 <div class="contenidoo">
    
     <h2 align="center">Lista de Pagos Con Intervalo </h2>  
        
        <table border="1" width="600" align="center">
            
            <tr bgcolor="skyblue">
                <th>Fecha del pago</th>
                <th>Paciente</th><th>Apellido</th>
                <th>concepto</th>
                <th>presupuesto</th>
                <th>pago</th><th>saldo</th>
                
            </tr>
            
            <%
            
            ArrayList<PagosDia> lista =(ArrayList<PagosDia>)request.getAttribute("lista");
            for(PagosDia v: lista){
            %>    
            <tr>
                
                <td><%=v.getFecha_pago()%></td> 
                <td><%=v.getPaciente()%></td> 
                <td><%=v.getApellido()%></td>
                <td><%=v.getConcepto()%></td>
                <td><%=v.getPresupuesto()%></td>
                <td><%=v.getPago()%></td>
                <td><%=v.getSaldo()%></td> 
   
                <%                    }

                %>
             
            </tr>
        </table>          
    <center>
        
        <h3>Suma de Pagos</h3>
         
                    <%
            DetallePaciente nuevo = new DetallePaciente();
            int Total = nuevo.obtenerTotalPagosIntervalo(request.getParameter("txtFecha"),request.getParameter("txtFecha2"));
           // int totals=Integer.parseInt(request.getParameter("cod"));
            //String Final= String.valueOf(Total.getInt(1));
         
      %>
    
      <input value=<%out.println(Total);//out.println(Total);%> readonly=""> 
        
    </center>                      
    </div>
</html>
