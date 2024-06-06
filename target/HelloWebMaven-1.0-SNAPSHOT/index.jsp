 <%-- 
    Document   : index
    Created on : 3/06/2024, 10:52:00 AM
    Author     : CYM-T
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="mt-2">
                            <div class="row">
                <div class="col-md-6">
                    <%-- Formulario de llenado--%>
                    <%@include file="./partials/shared/UserForm.jsp" %>
                </div>
                
                <div class="col-md-6">
                    <%-- Lista de usuarios --%>
                    <%@include file="./partials/shared/UserList.jsp" %>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-6 ">
                    <%-- Eliminar usuario --%>
                    <%@include file="./partials/shared/DeleteUser.jsp" %>
                </div>
                <div class="col-md-6 ">
                    <%-- Eliminar usuario --%>
                    <%@include file="./partials/shared/EditUser.jsp" %>
                </div>
            </div>
            </div>
        </div>
        <script type="module" src="${pageContext.request.contextPath}/assets/js/index.js"></script>   
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
