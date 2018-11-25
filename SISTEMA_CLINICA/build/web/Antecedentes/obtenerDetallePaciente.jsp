
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*,java.util.*"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h2 align="center">Antecedentes del Paciente</h2>
        
        <table border="1" width="600" align="center">
            
            <%
                ArrayList<FormularioPaciente> lista = DetallePaciente.obtenerFormularioPaciente(Integer.parseInt(request.getParameter("cod")));

                for (int i = 0; i < lista.size(); i++) {
                    FormularioPaciente d = lista.get(i);
            %> 
            

            <tr bgcolor="skyblue"> 
            <tr>  
                <td>Cod Formulario</td> 
                <td><%= d.getCodigo_formulario()%></td>
           </tr>
           <tr>
                 <td>Cod_paciente</td> 
                  <td><%= d.getCodigo()%></td>
           
            </tr>
            
            <tr>
                     <td>1.Cuantas Veces se Sepilla al Dia?</td> 
                     <td><%= d.getCuantas_veces()%></td>
            </tr>
                       
            <tr>
                <td>2.Utiliza hilo Dental</td>         
                <td><%= d.getHilo()%></td>
            </tr>
            
            <tr>
                <td>3.Utiliza Limpia Lengua</td> 
                  <td><%= d.getLengua()%></td>
            </tr>
            <tr>
                <td>4.Sangra al Cepillarse?</td> 
                  <td><%= d.getSangra()%></td>
            </tr>
            
            <tr>
                <td>5.Motivo de consulta</td> 
                    <td><%= d.getMotivo()%></td>
            </tr>
            
            <tr>
                <td>6. Tiene alguna Molestia</td> 
                <td><%= d.getMolestais()%></td>
            </tr>
            <tr>
                <td>7. Como es?</td> 
              <td><%= d.getEs()%></td>
          </tr>
          
          <tr>
              <td>8. Duele mas al</td> 
                <td><%= d.getDuele()%></td>
         </tr>
         <tr>
                <td>9.Inflamacion alguna vez?</td> 
                    <th><%= d.getInflamacion()%></td>
         </tr>

         <tr>
                    <td>10.Le gusta el color de sus dientes?</td> 
                <td><%= d.getColor()%></td>
       </tr>        
        <tr>   
               <td>11.Cree tener Mal aliento</td> 
               <td><%= d.getMal_aliento()%></td>
       </tr>
            <tr>
                <td>12.Cuando fue la ultima vez al Dentista </td> 
                       <th><%= d.getUltima_vez()%></td>
          </tr>
     <tr>
          <td>13.Esta Embarazada</td> 
                <td><%= d.getEmbarazada()%></td>
     </tr>         
       <tr>        
                <td>14.Tiene algun Medicamento</td> 
                 <td><%= d.getMedicamento()%></td>
      </tr>
      <tr>
          
      
                <td>15.Le han colocado anestesia</td>
                   <td><%= d.getAnestesia()%></td>
         </tr> 
         <tr>
                   <td>16.Le han extraido piezas dentales</td> 
                <td><%= d.getExtraido()%></td>
         </tr> 
         <tr>
                <td>17.Le han extraido Hemorragias</td> 
                    <th><%= d.getHemorragias()%></td>
        </tr>
        <tr>
                    <td>18.Padece alguna enfermedad</td> 
                <th><%= d.getEnfermedad()%></td>
        </tr>         
        <tr>   
        <td>19.Enfermedad que tiene</td> 
                      <th><%= d.getEnfermedad2()%></td>
       </tr>
       <tr>
                  <td>20.Ha estado Hospitalizado</td> 
                 <th><%= d.getHospitalizado()%></td>
      </tr>
      <tr>
                 <td>21. Por que?</td> 
                <td><%= d.getPorque()%></td>
      </tr>   
                   </tr>
               


            <%
            }
            %>
        </table>
        
        
        
    </body>
</html>
