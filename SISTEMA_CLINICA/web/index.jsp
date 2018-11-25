<%-- 
    Document   : index
    Created on : 9/05/2018, 09:51:48 PM
    Author     : Octavio Herrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        
       <%@include file="template1.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            </head>
    <body>          
                     <center>   
                  
     <center>   
    <h2 >SISTEMA CLINICA DENTAL</h2>

   
    </center>
        
         
               
    <h2 align="center">Registrese</h2>
    <center>
      <form  action="ServletControlador" method="get">
    
     <br>          <label>Primer Apellido:</label>
                   <input type="text" placeholder="Primer Apellido" name="txtApellido" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
                     <label>Segundo Apellido:</label>
                   <input type="text" placeholder="Segundo Apellido" name="txtApellido2" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
                    <label>PrimerNombre</label>
                   <input type="text" placeholder="Primer Nombre" name="txtNombre" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
                   <label>Segundo Nombre</label>
                   <input type="text" placeholder="Segundo Nombre" name="txtNombre2" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
              

                   <br> <label>Fecha de Nacimiento</label>
                 <input type="date" placeholder="Nacimiento" name="txtNacimiento"> 
                 <label> Direccion Domiciliar</label>
                <input type="text" placeholder="Direccion" name="txtDireccion"   required="" >
        
             
                
                
         
                <br>   <label>Telefono Recidencial</label>
                   <input type="number" placeholder="Telefono"  name="txtRecidencial" title="Solo Numeros" >
                  
                   <label>Telefono Celular 1</label>
                  <input type="number" placeholder="Celular" name="txtCelular1" title="Solo Numeros">
               
            
             
                 
             
                  <br>  <label>Telefono Celular 2</label>
                   <input type="number" placeholder="Celular2" name="txtCelular2">
                    <label>Doctor Que Refirio</label>
                   <input type="text" placeholder="Referencia" name="txtReferencia">
               
                 
                    <br>  <label>Ocupacion</label>
                     <th><input type="text" placeholder="Ocupacion" name="txtOcupacion"  ></th> 

                      
                    <br>  <label>DPI</label>
                    <th><input type="text" placeholder="DPI" name="txtdpi" </th> 


                     <br>   <input type="submit" value="Registrar" name="Registrarse" />
        
                

                 <input type="hidden" name="accion" value="RegistrarPaciente"/> 

 
     </form> 
    </center>
    
    
               <a href="#" id="logo"></a>
    <nav>
        <a href="#" id="menu-icon"></a>
    </nav>       
    </body>
</html>
