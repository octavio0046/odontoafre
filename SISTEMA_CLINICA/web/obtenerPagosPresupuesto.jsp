<%-- 
    Document   : obtenerPagosPresupuesto
    Created on : 14/09/2018, 11:57:46 AM
    Author     : OctavioHerrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.PagoPaciente"%>
<%@page import="Modelo.PagosBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </div>
    <div class="contenido">
      
        <table border="1" width="100" align="center"  >
                  
                  
                  
                <tr bgcolor="skyblue" width="10%" >
                 
                    <th >Cod Pac</th>
                    <th >FECHA</th>
                  <th>CONCEPTO</th>
                  
                  <th>PAGO</th>
                  <th>USUARIO</th><th>NO. RECIBO</th>

              </tr>
           <%
               
                ArrayList<PagoPaciente> lista = PagosBD.obtenerPagoPresupuesto(Integer.parseInt(request.getParameter("cod")));
           
                for (int i = 0; i < lista.size(); i++) {
                    PagoPaciente d = lista.get(i);
            %> 
                  
               


              <tr style="width:80px;height:15px">
                 
                  <td ><%=d.getCod_paciente()%></td> 
                  <td><%=d.getFecha()%></td> 
                  <td><%=d.getConcepto()%></td>
                   <td><%=d.getPago()%></td>
                    <td><%=d.getUsuario()%></td>
                  <td><%=d.getNumero_recibo()%></td>
               
                  
                 
              </tr>

              
                  <%
            }
            %>


              </table>
              
        
        
    </div>
</html>
