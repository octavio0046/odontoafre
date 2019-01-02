<%-- 
    Document   : prueba
    Created on : 10/06/2018, 07:54:28 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.PagosDia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>

<!DOCTYPE html>
<%
  response.setHeader("Pragma", "no-cache");
  response.addHeader("Cache-control", "must-revalidate");
  response.addHeader("Cache-control", "no-cache");
  response.addHeader("Cache-control", "no-store");
  response.setDateHeader("Expires", 0);
  try {
           if(session.getAttribute("nom")==null){
      

      request.getRequestDispatcher("index.jsp").forward(request, response);
      
  }
  }catch(Exception e){
      
    request.getRequestDispatcher("index.jsp").forward(request, response);  
  }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="template1.jsp" %>
  
         </head>
    <body>
    <center>
    
     <h2 align="center">Lista de Pagos del Dia</h2>  
        
        <table border="1" width="600" align="center">
            
            <tr bgcolor="skyblue">
               
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
                
                

                
                
                
                
             </center>   
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
    </body>
</html>
