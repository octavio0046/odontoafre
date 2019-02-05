<%-- 
    Document   : formVerSaldoTratamiento
    Created on : 4/02/2019, 01:01:28 PM
    Author     : OCTAVIOH
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Presupuesto"%>
<%@page import="Modelo.PresupuestoBD"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="encabezado">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </div>
    <div class="contenido">


        
        
<!-- Modal de pagos -->
<div class="modal fade" id="exampleModalCenterS" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">PAGOS</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          <table border="1" width="100" align="center"  >
        <tr bgcolor="skyblue" width="10%" >
            <th >SALDO</th>
        </tr>
                <%
            int cod=Integer.parseInt(request.getParameter("cod"));
            int cod2=Integer.parseInt(request.getParameter("cod2"));
            ArrayList<Presupuesto> listaPre = PresupuestoBD.obtenerSaldo(cod, cod2);

                for (int i = 0; i < listaPre.size(); i++) {
                    Presupuesto d = listaPre.get(i);              
            
       
                
            %>

                         
          
   
            <tr style="width:80px;height:15px">                 
                <td><%=d.getSaldo()%></td> 
            </tr> 
            
             <%
                }

            %>
        </table>
  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
        
        
        
        
        
        
        
        
        
        
          
        
        
            
        

    </div>
</html>
