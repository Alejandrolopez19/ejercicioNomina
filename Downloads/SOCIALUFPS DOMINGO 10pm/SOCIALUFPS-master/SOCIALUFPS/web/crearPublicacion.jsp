<%@page import="Default.*"%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        
        String url = request.getParameter("url");
        String titulo = (String)request.getParameter("titulo");
        String texto = (String)request.getParameter("texto");
        String cod = (String)request.getParameter("codigo");
        out.println(cod);
        Integer codigo = Integer.parseInt(cod);
        
        Calendar fecha = new GregorianCalendar();
        
        int año = fecha.get(Calendar.YEAR);
        int mes = fecha.get(Calendar.MONTH);
        int dia = fecha.get(Calendar.DAY_OF_MONTH);
        
        String f = dia+"/"+mes+"/"+año; 
        
        Publicacion pub = new Publicacion(url, codigo, texto, titulo, f);
        
        RedSocialDAO r = new RedSocialDAO();
        r.crearPublicacion(pub);
        response.sendRedirect("inicio.jsp");

        %>
    </head>

</html>
