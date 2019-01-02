<%-- 
    Document   : FacturaDigital
    Created on : 28/08/2018, 11:07:01 AM
    Author     : OctavioHerrera
--%>


<%@page import="Modelo.PagosBD"%>
<%@page import="Modelo.ReciboPago"%>
<%@page import="Modelo.ReciboPago"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.PagoPaciente"%>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="tablas.css"/>


    <div style="float: left; width: 220px;" >



    </div>



    <div style="float: right; width: 100px;" >


        <img src="odontoafre.png" style="width: 75px;  height: 50px;" alt="odontoafre.png">


    </div>

</head>


<body>
    <%

        ArrayList<ReciboPago> lista = DetallePaciente.obtenerPagoPacientePorRecibo(Integer.parseInt(request.getParameter("cod")));

        for (int i = 0; i < lista.size(); i++) {
            ReciboPago d = lista.get(i);
    %> 
   
        <tr>
        <center>
            <h4>RECIBO </h4>  
          
        </center> 
        </tr>
  <table  class="minimalistBlack" style="text-align:center;" >
     <tr>
         <th style="float: 50px; width: 220px;">No.<%=d.getNo_recibo()%> </th>
     <center>
         
    
     <h6>
         Dirección : 12 av. 4-87 Zona 1 Huehuetenango.

Número: 7765 7970  /  5847 5017   /  57556144

Número de Emergencia: 5019 6990

Horarios:

       Lunes a viernes  / 8:00 hrs. a 19:00 hrs.
                   Sábado   /  8:00 hrs. a 16:00 hrs.
     </h6>
   </center>       
    </tr>

</table>

<table class="minimalistBlack" style="text-align:center;">


    <tr bgcolor="skyblue" width="5%" >

        <th>Cod Paciente</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Tel </th>

    </tr> 

    <tr>
        <td><%=d.getCod_paciente()%></td>
        <td><%=d.getNombre()%> </td>
        <td><%=d.getApellido()%> </td>
        <td><%=d.getCelular()%> </td> 
    </tr>


</table> 





<table class="minimalistBlack" style="text-align:center;"  >
    <tr>
    <center>
        <h4>DETALLE</h4>

    </center> 
</tr>


<tr bgcolor="skyblue" width="5%" >
    <th>Id Pago</th>
    <th>Fecha</th>
    <th >Concepto</th>
    <th>Presupuesto</th><th>Pago</th>
    <th>Saldo del Tratamiento</th><th>Atendido por:</th>
</tr>
<tr>
    <td><%=d.getId_pago()%></td>
    <td style="width:80px;height:15px" readonly="" ><%=d.getFecha()%></td>

    <td ><%=d.getConcepto()%></td>
    <td>Q<%=d.getPresupuesto()%></td>
    <td>Q<%=d.getPago()%></td>
    <%
        PagosBD nuevo = new PagosBD();
        // double Total = nuevo.obtenerSaldo(Integer.parseInt(request.getParameter("cod")));
        double Saldo = nuevo.obtenerSaldo(d.getCod_presupesto(), d.getCod_paciente());
    %>
    <td>Q<%out.println(Saldo);%></td>
    <td><%=d.getUsuario()%></td>
</tr>
</table>
<center>
    <br>
    <br>
    <br> F_________________________<br>

    <%=d.getNombre()%> 
    <%=d.getApellido()%> 
</center>
<%
    }
%>

</body>

</html>
