<%-- 
    Document   : EditarUsuario
    Created on : 6/06/2024, 01:20:05 PM
    Author     : CYM-T
--%>

<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="./partials/shared/styles.jsp" %>
        <title>Editar datos</title>
    </head>
    <% User user = (User) request.getSession().getAttribute("usuarioEditar"); %>
    <body class="container">
        <a href="/HelloWebMaven" class="btn btn-secondary"><-</a>
        <div class="mt-5 justify-content-center align-items-center">
            <h2>Edicion de datos</h2>
            <form action="SvEditar" class="form" method="POST">
                <%= user.getId() %>
                <p class="form-group">
                    <label>DNI:     
                        <input type="text" name="dni" class="form-control"  value="<%=user.getDni() %>" />
                    </label>
                </p>
                <p class="form-group">
                    <label>Nombre:  
                        <input type="text" name="nombre" class="form-control" value="<%=user.getNombre() %>" />
                    </label>
                </p>
                <p class="form-group">
                    <label>Apellido:
                        <input type="text" name="apellido" class="form-control" value="<%=user.getApellido() %>" />
                    </label>
                </p>
                <p class="form-group">
                    <label>Teléfono:
                        <input type="text" name="telefono" class="form-control" value="<%=user.getTelefono() %>" />
                    </label>
                </p>
                <button type="submit" class="btn btn-primary ">Guardar cambios</button>
            </form>
        </div>
        <%@include file="./partials/shared/scripts.jsp" %>
    </body>
</html>
