<%-- 
    Document   : ShowUsers
    Created on : 3/06/2024, 01:55:35 PM
    Author     : CYM-T
--%>

<%@page import="Models.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="./shared/styles.jsp" %>
        <title>Mostrar usuarios</title>
    </head>
    <body>
        <div class="container mt-2">
            <a href="/HelloWebMaven" class="btn btn-secondary"><-</a>
            <h2 class="text-center">Vista usuarios registrados</h2>
            <table class="table table-stripped text-center">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Telefono</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<User> listaUsuarios = (List) request.getSession().getAttribute("lista");
                        int cont = 1;
                        for (User user : listaUsuarios) {


                    %>  
                    <tr>
                        <td><%= cont%></td>
                        <td><%= user.getId() %></td>
                        <td><%= user.getNombre()%></td>
                        <td><%= user.getApellido() %></td>
                        <td><%= user.getTelefono() %></td>
                    </tr>
                    <% cont++;
                    }%>
                </tbody>
            </table>
        </div>
        <%@include file="./shared/scripts.jsp" %>
    </body>
</html>
