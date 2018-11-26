
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<%@page import="java.util.ArrayList"%>
<%@page session="true"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <%@include file="template1.jsp" %>
  

  </head>
    <body>


        <h2 align="center">
          <%
          if(request.getParameter("men")!=null){
              
            out.println(request.getParameter("men"));
              
          }
          %>  
            
            
        </h2>
          
          <h3 align="center">
              <a href="index.jsp">Regresar al Menu Principal</a>  
          
       
          </h3>
    
          
    <center>
       <a href="BuscarPaciente.jsp">
          <img src="http://www.tiempodenegocioshoy.com/wp-content/uploads/2013/02/NEGOCIO-2.jpg" width="400" height="400"/>
  </a>
    </center>
          
    </body>
</html>
