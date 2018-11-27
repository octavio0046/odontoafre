<%-- 
    Document   : buscarPreupuesto
    Created on : 14/09/2018, 07:02:47 AM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.PresupuestoBD"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Presupuesto"%>
<%@page import="Modelo.Presupuesto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
    
    
    
     HttpSession objsesion = request.getSession(false);
    String usuario = (String) objsesion.getAttribute("perfil");
    if (usuario.equals("")) {

        response.sendRedirect("index.jsp");

    }
    
   
    String usu = "";
    String nom = "";
    HttpSession sesionOK = request.getSession();

    if (sesionOK.getAttribute("perfil") != null) {
        nom = (String) sesionOK.getAttribute("nom") + " " + (String) sesionOK.getAttribute("ape");

    }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

         
                    
                                   
        
       
        
        
        
    </body>
</html>
