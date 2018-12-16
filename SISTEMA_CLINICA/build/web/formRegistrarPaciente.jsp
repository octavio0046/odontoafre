<%-- 
    Document   : formRegistrarPaciente
    Created on : 25/11/2018, 08:05:35 AM
    Author     : OCTAVIOH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <div  class="cabeceras">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="template1.jsp" %>
   
    </div>
        <div class="contenido">
                  
    <h2 align="center">Registrese</h2>
    <center>
        
        <div style="border: 2px;">
            
            <form class="registrarPacientes" action="ServletPacientes" method="get">
        
          <div class="form-group">
              
    
              <label>Primer Apellido:</label>
              <input type="text" placeholder="Primer Apellido" name="txtApellido" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
               
              <label>Segundo Apellido:</label>
              <input type="text"  placeholder="Segundo Apellido" name="txtApellido2" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
          </div>
                   
          <div class="form-group">
              
           
                   <label>PrimerNombre</label>
                   <input type="text"  placeholder="Primer Nombre" name="txtNombre" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
                   <label>Segundo Nombre</label>
                   <input type="text"   placeholder="Segundo Nombre" name="txtNombre2" pattern="[A-Z ]+"  required=""  title="SOLO MAYUSCULAS">
          </div>    

           <div class="form-group">
                   <label>Fecha de Nacimiento</label>
                 <input type="date"  placeholder="Nacimiento" name="txtNacimiento"> 
                 <label> Direccion Domiciliar</label>
                 <input type="text"  placeholder="Direccion" name="txtDireccion"   required="" title="COMPLETE CON LA ZONA DE RECIDENCIA" >
        
           </div>
                
                
          <div class="form-group">
              
             <label>Telefono Recidencial</label>
             <input type="number" placeholder="Telefono"   name="txtRecidencial"  required="" title="uno o mas numeros" >
                  
                   <label>Telefono Celular 1</label>
                   <input type="number" placeholder="Celular"  name="txtCelular1" title="uno o mas numeros" required="">
              
                   <label>Telefono Celular 2</label>
                   <input type="number" placeholder="Celular2"  name="txtCelular2" title="uno o mas numeros" required="" >
                   
                   
                   
          </div> 
            
             
                 
             
         
               
        
          <div class="form-group">
              
                     <label>Ocupacion</label>
                     <th><input type="text" placeholder="Ocupacion"  name="txtOcupacion"  required="" title="campo obligatorio" ></th> 

                      
                    <label>DPI</label>
                    <th><input type="text" placeholder="DPI"  name="txtdpi" required="" title="Debe llevar un numero por lo menos" </th> 

                    
                     <label>Doctor Que Refirio</label>
                    <input type="text" placeholder="Referencia"   name="txtReferencia"  required="" title="campo obligatorio">
               
                    
                    

          </div>
                       <input type="submit" value="Registrar"  name="Registrarse" />
        
                

                 <input type="hidden" name="accion" value="RegistrarPaciente"/> 

 
     </form> 
            
     </div>
    </center>
       
         
         
         
         
         
         
         
         
         
         
    </div>
</html>
