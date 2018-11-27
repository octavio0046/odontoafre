<%-- 
    Document   : obtenerPagos
    Created on : 14/05/2018, 10:45:10 AM
    Author     : Octavio Herrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.PagoPaciente"%>
<%@page import="Modelo.DetallePaciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<head>
           <link rel="stylesheet" href="estilos22.css"/>
           
           
           
</head>              
                    
                    
<body>  
                   
              <table border="1" width="100" align="center"  >
                  
                  
                  
                <tr bgcolor="skyblue" width="10%" >
                 
                    <th >CODIGO DEL PACIENTE</th>
                    <th >FECHA</th>
                  <th>CONCEPTO</th><th >PRESUPUESTO</th>
                  <th>PAGO</th><th>SALDO</th>
                  <th>USUARIO</th><th>NO. RECIBO</th>

              </tr>
           <%
               
                ArrayList<PagoPaciente> lista = DetallePaciente.obtenerPagoPaciente(Integer.parseInt(request.getParameter("cod")));
           
                for (int i = 0; i < lista.size(); i++) {
                    PagoPaciente d = lista.get(i);
            %> 
                  
               


              <tr style="width:80px;height:15px">
                 
                  <td ><%=d.getCod_paciente()%></td> 
                  <td><%=d.getFecha()%></td> 
                  <td><%=d.getConcepto()%></td>
                  <td><%=d.getPresupuesto()%></td>
                  <td><%=d.getPago()%></td>
                  <td><%=d.getSaldo()%></td>
                  <td><%=d.getUsuario()%></td>
                  <td><%=d.getNumero_recibo()%></td>
               
                  
                 
              </tr>

              
                  <%
            }
            %>


              </table>
                  
            
            <center>
                
         
                  <h4>TOTAL DE LOS PAGOS REALIZADOS</h4>
            
        <%
            DetallePaciente nuevo = new DetallePaciente();
            int Total = nuevo.obtenerTotalPagos(Integer.parseInt(request.getParameter("cod")));
           // int totals=Integer.parseInt(request.getParameter("cod"));
            //String Final= String.valueOf(Total.getInt(1));
         
      %>
    
      <input value=<%out.println(Total);//out.println(Total);%> readonly=""> 
        
        
                 </center>      
                    
                    
    </body>
</html>
