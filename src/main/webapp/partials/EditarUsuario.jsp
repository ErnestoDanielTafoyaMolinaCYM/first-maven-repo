<%-- 
    Document   : EditarUsuario
    Created on : 6/06/2024, 01:20:05 PM
    Author     : CYM-T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="./shared/styles.jsp" %>
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Datos del cliente</h2>
        <form action="SvUsuarios" class="form" method="POST">
            <p class="form-group"><label>DNI:<input type="text" name="dni" class="form-control"/></label></p>
            <p class="form-group"><label>Nombre:<input type="text" name="nombre" class="form-control"/></label></p>
            <p class="form-group"><label>Apellido:<input type="text" name="apellido" class="form-control"/></label></p>
            <p class="form-group"><label>Teléfono:<input type="text" name="telefono" class="form-control"/></label></p>
            <button type="submit" class="btn btn-success btn-lg">Enviar</button>
        </form>
        <%@include file="./shared/scripts.jsp" %>
    </body>
</html>
