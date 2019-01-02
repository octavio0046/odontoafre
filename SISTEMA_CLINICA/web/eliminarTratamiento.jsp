<%-- 
    Document   : eliminarTratamiento
    Created on : 23/05/2018, 08:05:07 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Presupuesto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
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
       <%@include file="template1.jsp" %>>
    </div>
    <div class="contenido">

<center>
               <%
                ArrayList<Presupuesto> lista = DetallePaciente.obtenerCodPresupuesto(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista.size(); i++) {
                    Presupuesto d = lista.get(i);
            %> 
            
        
           <form action="ServletTratamientos" method="get">
               <label>Seguro que desea eliminar el tratamiento con el codigo siguiente</label>
              

               <input type="text"  name="txtCodigoPresupuesto" style="width:80px;height:15px" value="<%= d.getCodigo()%>" readonly="">
                
               <br>  <input type="text"   value="<%= d.getTratamiento()%>" style="width:500px;height:100px" readonly="">
               
                <br> <br>   <input type="submit" class="btn btn-danger" value="ELIMINAR" name="Registrarse" />
                             <input type="hidden"  name="accion" value="EliminarPresupuesto"/> 
           </form>
           
           
         <%
          }
          %>
           </center>
    </div>
</html>
