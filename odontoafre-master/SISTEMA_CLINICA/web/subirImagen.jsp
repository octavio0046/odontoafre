<%-- 
    Document   : subirImagen
    Created on : 15/06/2018, 07:41:58 AM
    Author     : OctavioHerrera
--%>

<%@page import="Modelo.DetallePaciente"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="Modelo.FormularioPaciente"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.util.*"  %>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"  %>
<%@page import="org.apache.commons.io.*"  %>
<%@page import="java.io.*" %>

 
           
              
           

<%

      
    
    
 //aqui me permite traer el archivo de imagen que subimos en la imgane
      String cod2=request.getParameter("txtCodigoPaciente");
 
         FileItemFactory file_Factory = new DiskFileItemFactory();
          ServletFileUpload servlet_up= new ServletFileUpload(file_Factory);
          List items= servlet_up.parseRequest(request);
          String img="";
          
          
          
           
          for(int i=0;i<items.size();i++){
             
              
              
              
              FileItem item= (FileItem) items.get(0);
              if(!item.isFormField()){
                //aqui le indico en donde se va a guardar y con e item.getname guado el nmbre de la imagen
                  File archivo_server= new File("C:\\Users\\OctavioHerrera\\Documents\\NetBeansProjects\\ODONTOAFRE\\web\\img\\"+item.getName());
                  
                  
                 
                  
                  try {
                          item.write(archivo_server);
                      } catch (Exception e) {
                          
                        
                      img=item.getName();
                     
             
                      }
                  
                  
              }
              
          }
          




   
          
%>


        


<jsp:forward page="subirImagen2.jsp">
    <jsp:param name="img" value="<%=img%>"></jsp:param> 
         <jsp:param name="cod2" value="<%=cod2%>"></jsp:param> 
</jsp:forward>

 
      