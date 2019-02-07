<%-- 
    Document   : PagosPagosIntervalo
    Created on : 13/06/2018, 06:26:56 PM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.PagosDia"%>
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
        if (session.getAttribute("nom") == null) {

            request.getRequestDispatcher("index.jsp").forward(request, response);

        }
    } catch (Exception e) {

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>
<html>
    <div class="cabecera">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="template1.jsp" %>

    </div>
    <div class="contenidoo">


        <%---inicia tabla---%>
        <div class="table-responsive">
            <table class="table table-sm">
                <thead>
                    <tr>
                        <th scope="col">Fecha del pago</th>
                        <th scope="col">Paciente</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">concepto</th>
                        <th scope="col">presupuesto</th>
                        <th scope="col">pago</th>
                        <th scope="col">saldo</th>
                    </tr>
                </thead>
                <tbody>
                     <%

                ArrayList<PagosDia> lista = (ArrayList<PagosDia>) request.getAttribute("lista");
                for (PagosDia v : lista) {
            %>
                    <tr>
                
                        <td><%=v.getFecha_pago()%></td> 
                        <td><%=v.getPaciente()%></td> 
                        <td><%=v.getApellido()%></td>
                        <td><%=v.getConcepto()%></td>
                        <td><%=v.getPresupuesto()%></td>
                        <td><%=v.getPago()%></td>
                        <td><%=v.getSaldo()%></td>
                    </tr>

                <%                    }

                %>

                </tbody>
            </table>
        </div>
        <%--finaliza tabla----%>














        <center>

            <h3>Suma de Pagos</h3>

            <%                        DetallePaciente nuevo = new DetallePaciente();
                int Total = nuevo.obtenerTotalPagosIntervalo(request.getParameter("txtFecha"), request.getParameter("txtFecha2"));
                // int totals=Integer.parseInt(request.getParameter("cod"));
                //String Final= String.valueOf(Total.getInt(1));

            %>

            <input value=<%out.println(Total);//out.println(Total);%> readonly=""> 

        </center>                      
    </div>
</html>
