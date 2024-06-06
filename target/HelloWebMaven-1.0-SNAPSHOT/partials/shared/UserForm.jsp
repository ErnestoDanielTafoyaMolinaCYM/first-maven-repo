<%-- 
    Document   : UserForm
    Created on : 3/06/2024, 11:49:56 AM
    Author     : CYM-T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h2>Datos del cliente</h2>
<form action="SvUsuarios" class="form" method="POST">
    <p class="form-group"><label>DNI:<input type="text" name="dni" class="form-control"/></label></p>
    <p class="form-group"><label>Nombre:<input type="text" name="nombre" class="form-control"/></label></p>
    <p class="form-group"><label>Apellido:<input type="text" name="apellido" class="form-control"/></label></p>
    <p class="form-group"><label>Teléfono:<input type="text" name="telefono" class="form-control"/></label></p>
    <button type="submit" class="btn btn-success btn-lg">Enviar</button>
</form>

