<%-- 
    Document   : actualizarPaciente
    Created on : 23/05/2018, 10:58:48 AM
    Author     : OctavioHerrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.DetallePaciente"%>
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
        <%@include file="template1.jsp" %>
  
    </div>
        <div class="contenido">
 





             <%
                ArrayList<Paciente> lista = DetallePaciente.obtenerPacienteCod(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista.size(); i++) {
                    Paciente d = lista.get(i);
            %>       
         
            
            <%--inicia el formulario ----%>
           <center>
            <form action="ServletPacientes" method="get">
                <input type="text" name="txtCodigo" value="<%=d.getCodigo_paciente()%>" hidden="">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Primer Nombre</label>
                        <input type="text" name="txtNombre" value="<%=d.getNombres()%>" class="form-control" id="inputEmail4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Segundo Nombre</label>
                        <input type="text" name="txtNombre2" class="form-control" value="<%=d.getNombres2()%>" id="inputPassword4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Primer Apellido</label>
                        <input type="text"  name="txtApellido" value="<%=d.getApellidos()%>"  class="form-control" id="inputEmail4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();" >
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Segundo Apellido</label>
                        <input type="text"  name="txtApellido2"  class="form-control" value="<%=d.getApellidos2()%>" id="inputPassword4" placeholder=""style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Fecha Nacimiento</label>
                    <input type="date" name="txtFecha" value="<%=d.getFecha()%>" class="form-control" id="inputAddress" placeholder="">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Direccion Domiciliar</label>
                    <input type="text" name="txtDireccion" value="<%=d.getDireccion()%>" class="form-control" id="inputAddress2" placeholder=""style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputCity">Telefono Recidencial</label>
                        <input type="number"  name="txtRecidencial" value="<%=d.getTelefono_recidencial()%>"  class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputCity">Telefono 1</label>
                        <input type="number" name="txtCelular1" value="<%=d.getTelefono1()%>" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputZip">Telefono 2</label>
                        <input type="number" name="txtCelular2" value="<%=d.getTelefono2()%>" class="form-control" id="inputZip">
                    </div> 
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Ocupación</label>
                    <input type="text"  name="txtOcupacion" value="<%=d.getOcupacion()%>" class="form-control" id="inputAddress2" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">DPI</label>
                        <input type="text" name="txtdpi" value="<%=d.getDpi()%>" class="form-control" id="inputEmail4" placeholder="">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">REFERIDO POR:</label>
                        <input type="text" name="txtReferencia" value="<%=d.getReferido()%>" class="form-control" id="inputPassword4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                        <input type="text" name="txtEstado" value="<%=d.getEstado()%>" hidden="">
                </div>
                
                <input type="submit" class="btn btn-outline-success" value="Registrar"  name="Registrarse" />
                <input type="hidden" name="accion" value="ModificarPaciente"/>
            </form>
        </center>    
            <%--finaliza el formulario ----%>

        
        
    </div>
    
          <%
            }
            %>
</html>
