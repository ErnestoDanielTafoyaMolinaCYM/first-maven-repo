<%-- 
    Document   : EditUser
    Created on : 6/06/2024, 01:21:52 PM
    Author     : CYM-T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h2>Editar usuario</h2>
<p>Ingrese el id del usuario a eliminar</p>
<form action="SvEditar" method="GET">
    <p>
        <label>Id</label>
        <input type="text" name="id_usuarioEdit" class="form-control" required/>
    </p>
    <button type="submit" class="btn btn-primary w-100" id="deleteUser">Editar Usuario</button>
</form>
