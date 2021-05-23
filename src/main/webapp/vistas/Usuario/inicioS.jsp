<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="../../includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<body>
<section class="estiloSeccion">
    <div class="Contenedorimg">
        <img class="estiloimg" src="../../img/imgInicial.png" alt="Logo Migas">
    </div>
    <div class="ContenedorForm">
        <h1>Iniciar Sesión</h1>
        <form action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=iniciar" method="post">
            <h5><label>Usuario: </label><br> <input type="text" name="idenUsuario"/></h5>
            <h5><label>Contraseña: </label><br> <input type="password" name="claveUsuario"/><h5><br>
                <br> <input type="submit" value="Iniciar Sesion"/><br>
        </form>
        <br>
        <h3>No tiene cuenta... <a href="Registro.jsp">Regístrese</a></h3>
    </div>
</section>
</body>
</html>


<%@include file="../../includes/pie.jsp" %>

