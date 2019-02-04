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
        <link rel="stylesheet" href="estilos22.css"/>
        <%@include file="template1.jsp" %>
    </div>
    <div class="contenido">   

  

<%---inicia formulario---%>
<center>
<form class="obtenerPagosIntervalo" action="ServletPagos" method="get">
    
  <div class="form-row">
    <div class="col">
          <label for="formGroupExampleInput">DE: </label>
      <input type="date" name="txtFecha" class="form-control" >
    </div>
    <div class="col">
          <label for="formGroupExampleInput">A: </label>
      <input type="date" name="txtFecha2" class="form-control" >
    </div>
  </div>
           <br>  <br>    <input  type="submit"  class="btn btn-dark" value="Buscar" > 
           <input type="hidden" name="accion" value="BuscarInterPagos" />
</form>
</center>
<%---finaliza formulario---%>        


    </div>
</html>
