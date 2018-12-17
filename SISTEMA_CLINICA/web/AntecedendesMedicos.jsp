<%-- 
    Document   : AntecedendesMedicos
    Created on : 10/05/2018, 06:22:12 PM
    Author     : Octavio Herrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Paciente"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


    </head>
    <body>

    <center>

        <h2 align="center">Registrese</h2>
        <form  class="antecedentes" action="ServletFormularios" method="get">

            <%
                DetallePaciente nuevo = new DetallePaciente();
                int Total = nuevo.UltimoPacienteRegistrado();
                // int totals=Integer.parseInt(request.getParameter("cod"));
                //String Final= String.valueOf(Total.getInt(1));

            %>

            <label>Su codigo es</label>
            <input type="text" name="txtCodigo" value="<%out.println(Total);%>" readonly="" ><br>

            <%

            %>

            <th>    1.Cuantas Veces se Sepilla al Dia?(1 a 10)</th>
            <th>    <input type="number" name="txtCuantas" min="1" max="10" required="Complete este Campo"></th>

            <br>    <label>2.Utiliza hilo Dental</label>  


            <input type="radio"  name="txtHilo" id="hilo" value="SI" >
            <label for="hilo">SI</label>
            <input type="radio"  name="txtHilo" id="hilo2" value="NO">
            <label for="hilo2">NO</label>

            <br><label> 3.Utiliza Limpia Lengua</label>     

            <input type="radio"  name="txtLengua" id="lengua" value="SI" >
            <label for="lengua">SI</label>
            <input type="radio"  name="txtLengua" id="lengua2" value="NO" >
            <label for="lengua2">NO</label>

            <br><label> 4.Sangra al Cepillarse?</label>       

            <input type="radio"  name="txtCepillarse" id="cepillarse" value="SI" >
            <label for="cepillarse">SI</label>
            <input type="radio"  name="txtCepillarse" id="cepillarse2" value="NO" >
            <label for="cepillarse2">NO</label>

            <br><label>5.Motivo de consulta</label>         
            <input type="text" style="text-transform:uppercase;"  name="txtMotivo"></th>

            <br><label>6. Tiene alguna Molestia</label>        

            <input type="radio"  name="txtMolestia" id="molestia" value="SI" >
            <label for="molestia">SI</label>
            <input type="radio"  name="txtMolestia" id="molestia2"value="NO" >
            <label for="molestia">NO</label>

            <br><label>7. Como es?</label>          

            <input type="radio"  name="txtEs" id="es" value="LEVE" >
            <label for="es">LEVE</label>
            <input type="radio"  name="txtEs" id="es1" value="MEDIO" >
            <label for="es1">MEDIO</label>
            <input type="radio"  name="txtEs" id="es2" value="FUERTE" >
            <label for="es2">FUERTE</label>

            <br><label>8. Duele mas al</label>        

            <input type="radio"  name="txtDolor" id="duele" value="CALOR" >
            <label for="duele">Calor</label>
            <input type="radio"  name="txtDolor" id="duele1" value="FRIO" >
            <label for="duele2">Frio</label>

            <br><label>  9.Inflamacion alguna vez?</label>     

            <input type="radio"  name="txtInflamacion" id="inflamacion" value="SI" >
            <label for="inflamacion">SI</label>
            <input type="radio"  name="txtInflamacion" id="inflamacion2" value="NO" >
            <label for="inflamacion2">NO</label>

            <br><label>10.Le gusta el color de sus dientes?</label>      

            <input type="radio"  name="txtColor" id="color" value="SI" >
            <label for="color">SI</label>
            <input type="radio"  name="txtColor" id="color2" value="NO" >
            <label for="color2">NO</label>

            <br><label>11.Cree tener Mal aliento</label>     

            <input type="radio"  name="txtAliento" id="aliento"value="SI" >
            <label for="aliento">SI</label>
            <input type="radio"  name="txtAliento" id="aliento2" value="NO" >
            <label for="aliento">NO</label>

            <br><label>12.Cuando fue la ultima vez al Dentista (Meses)</label> 
            <input type="number" name="txtMeses" min="1" max="50" required="Complete este Campo">

            <br><label>13.Esta Embarazada</label> 

            <input type="radio"  name="txtEmbarazada" id="embarazada" value="SI" >
            <label for="embarazada1">SI</label>
            <input type="radio"  name="txtEmbarazada" id="embarazada2" value="NO" >
            <label for="embarazada2">NO</label>

            <br><label>4.Tiene algun Medicamento</label>  

            <input type="radio"  name="txtMedicamento" id="medi" value="SI" >
            <label for="medi">SI</label>
            <input type="radio"  name="txtMedicamento" id="medi2" value="NO" >

            <br><label>15.Le han colocado anestesia</label>

            <input type="radio"  name="txtAnestesia" id="anes" value="SI" >
            <label for="anes">SI</label>
            <input type="radio"  name="txtAnestesia" id="anes2" value="NO" >
            <label for="anes2">NO</label>

            <br><label>16.Le han extraido piezas dentales</label>  

            <input type="radio"  name="txtPieza"  id="pies " value="SI" >
            <label for="pies">SI</label>
            <input type="radio"  name="txtPieza" id="pies2" value="NO" >
            <label for="pies2">NO</label>

            <br><label>17. Ha tenido Hemorragias</label>b    

            <input type="radio"  name="txtHemorragia" id="hemo" value="SI" >
            <label for="hemo">SI</label>
            <input type="radio"  name="txtHemorragia" id="hemo2" value="NO" >
            <label for="hemo2">NO</label>

            <br><label>   18.Padece alguna enfermedad</label>b  

            <input type="radio"  name="txtEnfermedad" id="enfer" value="SI" >
            <label for="enfer">SI</label>
            <input type="radio"  name="txtEnfermedad" id="enfer2" value="NO" >
            <label for="enfer2">NO</label>

            <br><label> 19.Enfermedad que tiene</label>    <br>

            <input type="radio"  name="txtEnfermedad2" id="enfer3" value="CORAZON" >
            <label for="enfer3">Corazon</label>

            <input type="radio"  name="txtEnfermedad2" id="enfer4" value="HIGADO" >
            <label for="enfer4">Higado</label>

            <input type="radio"  name="txtEnfermedad2" id="enfer5" value="RIÑONEZ" >
            <label for="enfer5">Riñonez</label>

            <input type="radio"  name="txtEnfermedad2" id="enfer6" value="ALERGIAS" >
            <label for="enfer6">Alergias</label>

            <label for="checkbox7">deabetes</label>
            <input type="radio"  name="txtEnfermedad2" id="enfer7" value="DEABETES">

            <label for="checkbox">S.I.D.A.</label>
            <input type="radio"  name="txtEnfermedad2" id="enfer8" value="SIDA" >

            <label for="checkbox">NINGUNO</label>
            <input type="radio"  name="txtEnfermedad2" id="enfer9" value="NINGUNO" >

            <br><label>20.Ha estado Hospitalizado</label>    
            <input type="radio"  name="txtHospitalizado" id="Hospi" value="SI" >
            <label for="Hospi">SI</label>
            <input type="radio"  name="txtHospitalizado" id="Hospi2" value="NO" >
            <label for="Hospi2">NO</label>

            <br><label>  21. Por que?</label>      
            <input type="text" style="text-transform:uppercase;"  name="txtPorque" required="Complete este Campo"   ></th>

            <input type="submit" value="Registrar" name="Registrarse" />

            <input type="hidden" name="accion" value="RegistrarFormularioPaciente"/> 

    </center>
</form>

<center>   
    <h2 >ODONTOAFRE</h2>
    <h3>Clinicas Dentales</h3>
    <h5>12a, Avenida 4-48 zona 1, Huehuetenango, Huehuetenango</h5>
    <h5>Tels: 77657970/5847-5017 Email: odontoafrehotmail.com</h5>
    <img src="http://2.bp.blogspot.com/-OsUiqHFWko4/WM9jqxXRGKI/AAAAAAAAA1E/QidedcLHr00W61Ik9DXfogzZpFeZDR4awCK4B/s1600/microscopia%2Bendodontica%2BMARCA%2BDE%2BAGUA.png" width="100" height="100"/>
</center>

</body>
</html>
