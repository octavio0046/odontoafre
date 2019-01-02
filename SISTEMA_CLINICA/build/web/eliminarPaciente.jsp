<%-- 
    Document   : eliminarPaciente
    Created on : 20/05/2018, 06:02:15 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.FormularioPaciente"%>
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
       <%@include file="template1.jsp" %>
    </div>
    <div class="contenido">
 
  

        
    <center>
           <%
                            ArrayList<FormularioPaciente> lista = DetallePaciente.obtenerFormularioPaciente(Integer.parseInt(request.getParameter("cod")));
                          for (int i = 0; i < lista.size(); i++) {
                                FormularioPaciente d = lista.get(i);
           %>  
        
           <form action="ServletPacientes" method="get">
               <label>Seguro que desea eliminar al cliente con el codigo </label>
              

               <input type="text"  name="txtCodigoPaciente" style="width:80px;height:15px" value="<%= d.getCodigo()%>" readonly="">
                
                <br>   <input type="submit" value="ELIMINAR" name="Registrarse" />
                       <input type="hidden" name="accion" value="EliminarPaciente"/> 
           </form>
           
           
         <%
          }
          %>
           </center>
    </div>
</html>
