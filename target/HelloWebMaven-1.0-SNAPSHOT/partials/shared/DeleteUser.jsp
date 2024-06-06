<%-- 
    Document   : DeleteUser
    Created on : 6/06/2024, 10:53:43 AM
    Author     : CYM-T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2>Eliminar usuario</h2>
<p>Ingrese el id del usuario a eliminar</p>
<form action="SvEliminar" method="POST">
    <p>
        <label>Id</label>
        <input type="text" name="id_usuario" class="form-control" required/>
    </p>
    <button type="submit" class="btn btn-danger w-100" id="deleteUser">Eliminar Usuario</button>
</form>

