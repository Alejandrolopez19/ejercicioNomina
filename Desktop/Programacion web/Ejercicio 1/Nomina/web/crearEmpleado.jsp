<%-- 
    Document   : crearEmpleado
    Created on : 14/04/2020, 08:01:10 AM
    Author     : Alejandro Lopez
--%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="JavaPackage.EmpleadoVO"%>
<%@page import="JavaPackage.EmpleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String codigo = (String) request.getParameter("codigo");
            String cedula = (String) request.getParameter("cedula");
            String nombre = (String) request.getParameter("nombre");
            
            
            String fechanacimiento = request.getParameter("fechanacimiento");
            //Date nacimiento=new SimpleDateFormat("yyyy/MM/dd").parse(fechanacimiento.replace("-","/"));
            
            
            String fechaingreso = request.getParameter("fechaingreso");
            //Date ingreso=new SimpleDateFormat("yyyy/MM/dd").parse(fechaingreso.replace("-","/"));
            
            String fecharetiro = request.getParameter("fecharetiro");
            //Date retiro=new SimpleDateFormat("yyyy/MM/dd").parse(fecharetiro.replace("-","/"));
        
            EmpleadoVO vo = new EmpleadoVO(codigo,cedula,nombre,fechanacimiento,fechaingreso,fecharetiro);
            EmpleadoDAO dao = new EmpleadoDAO(vo);
            
            dao.registrarEmpleado();
            
            response.sendRedirect("index.jsp?"+"EmpleadoCreadoConExito");
        %>
    </head>
</html>
