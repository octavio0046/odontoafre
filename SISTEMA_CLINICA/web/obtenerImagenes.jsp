
<%-- 
    Document   : obtenerImagenes
    Created on : 15/06/2018, 08:21:06 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.Imagenes"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
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
        <%@include file="template1.jsp" %>
               </head>
    <body style="background-color:#222;">        
                    
  
           <h2 align="center">Catalogo de Productos</h2>

     
            <%
   ArrayList<Imagenes> lista = DetallePaciente.obtenerImagenes(Integer.parseInt(request.getParameter("cod")));
           
                for (int i = 0; i < lista.size(); i++) {
                     int salto = 0;
                   Imagenes d = lista.get(i);
            %> 
            
    
            
        
            <div class="contenedor-galeria">
                         <img class="galeria__img" src="img/<%=d.getImagen()%>" >
                     
                         <label style="color: #9AFE2E">Nombre Imagen:</label>
                         <br> <label style="color: #fff"><%=d.getNombre()%></label><br>
                       <br>  <label style="color:#9AFE2E">Comentario:</label>      
                         <label style="color: #fff"><%=d.getObservaciones()%></label> 
        
            </div>
                         <hr style="size:50px; width: 80%; height: 10px;">
    
           
            <%
                salto++;
                if (salto == 3) {


            %>

       
           
                            <%                        salto = 0;

                        }
                    }
                %> 


        
    </body>
</html>
