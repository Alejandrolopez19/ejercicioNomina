<%-- 
    Document   : crearEmpleado
    Created on : 14/04/2020, 08:01:10 AM
    Author     : Alejandro Lopez
--%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="default.EmpleadoVO"%>
<%@page import="default.EmpleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String codigo = (String) request.getParameter("codigo");
            String cedula = (String) request.getParameter("cedula");
            String nombre = (String) request.getParameter("nombre");
            
            
            String fechanacimiento = request.getParameter("fechanacimiento");
            Date nacimiento=new SimpleDateFormat("dd/MM/yyyy").parse(fechanacimiento);
            
            String fechaingreso = request.getParameter("fechaingreso");
            Date ingreso=new SimpleDateFormat("dd/MM/yyyy").parse(fechaingreso);
            
            String fecharetiro = request.getParameter("fecharetiro");  
            Date retiro=new SimpleDateFormat("dd/MM/yyyy").parse(fecharetiro);
        
            EmpleadoVO vo = new EmpleadoVO(codigo,cedula,nombre,nacimiento,ingreso,retiro);
            EmpleadoDAO dao = new EmpleadoDAO(vo);
            
            dao.registrarEmpleado();
            
            response.sendRedirect("index.jsp?"+"EmpleadoCreadoConExito");
        %>
    </head>
</html>
