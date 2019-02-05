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


<html>
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </div>
    <div class="contenido">



 

<!-- Modal de pagos -->
<div class="modal fade" id="exampleModalCenterP" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
            <th >Cod Pac</th>
            <th >FECHA</th>
            <th>CONCEPTO</th>
            <th>PAGO</th>
            <th>USUARIO</th><th>NO. RECIBO</th>
        </tr>
              <%
            ArrayList<PagoPaciente> lista20 = PagosBD.obtenerPagoPresupuesto(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista20.size(); i++) {
                    PagoPaciente d = lista20.get(i);
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
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




     



        <%---
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

---%>

    </div>
</html>
