
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
              <a href="AntecedendesMedicos.jsp">SEGUIR AL PASO NUMERO 2</a>  
          </h3>
        
        
    </body>
</html>
