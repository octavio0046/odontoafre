<%-- 
    Document   : formRegistrarPaciente
    Created on : 25/11/2018, 08:05:35 AM
    Author     : OCTAVIOH
--%>

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
        if (session.getAttribute("nom") == null) {

            request.getRequestDispatcher("index.jsp").forward(request, response);

        }
    } catch (Exception e) {

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>
<html>
    <div  class="cabeceras">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="template1.jsp" %>
    </div>
    <div class="contenido">
        <%---empieza formulario registro---%>
        <center>
            <form action="ServletPacientes" method="get">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Primer Nombre</label>
                        <input type="text" name="txtNombre" class="form-control" id="inputEmail4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Segundo Nombre</label>
                        <input type="text" name="txtNombre2" class="form-control" id="inputPassword4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Primer Apellido</label>
                        <input type="text"  name="txtApellido" class="form-control" id="inputEmail4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();" >
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Segundo Apellido</label>
                        <input type="text"  name="txtApellido2" class="form-control" id="inputPassword4" placeholder=""style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Fecha Nacimiento</label>
                    <input type="date" name="txtNacimiento" class="form-control" id="inputAddress" placeholder="">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Direccion Domiciliar</label>
                    <input type="text" name="txtDireccion" class="form-control" id="inputAddress2" placeholder=""style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputCity">Telefono Recidencial</label>
                        <input type="number"  name="txtRecidencial"  class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputCity">Telefono 1</label>
                        <input type="number" name="txtCelular1" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputZip">Telefono 2</label>
                        <input type="number" name="txtCelular2" class="form-control" id="inputZip">
                    </div> 
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Ocupación</label>
                    <input type="text"  name="txtOcupacion" class="form-control" id="inputAddress2" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">DPI</label>
                        <input type="text" name="txtdpi" class="form-control" id="inputEmail4" placeholder="">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">REFERIDO POR:</label>
                        <input type="text" name="txtReferencia" class="form-control" id="inputPassword4" placeholder="" style="text-transform:uppercase;" onkeyup="javascript:this.value = this.value.toUpperCase();">
                    </div>
                </div>
                <input type="submit" class="btn btn-outline-success" value="Registrar"  name="Registrarse" />
                <input type="hidden" name="accion" value="RegistrarPaciente"/>
            </form>
        </center>
        <%---termina formulario registro---%>



    </div>
</html>
