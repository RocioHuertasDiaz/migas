<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro</title>
</head>
<body>
<section class="estiloSeccion">

    <div class="ContenedorForm">
        <h1>Formulario de Registro</h1>
        <form action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=guardar" method="post">
            <h5><label>Usuario: </label><br> <input type="text" name="usuario"
                                                    placeholder="Ingrese su usuario" pattern="[A-Za-z]{2,40}"
                                                    autofocus/>
            </h5>
            <h5><label>Nombres: </label><br> <input type="text" name="nombre"
                                                    placeholder="Ingrese sus nombres" required
                                                    pattern="[A-Za-z]{2,40}"/>
            </h5>
            <h5><label>Apellidos: </label><br> <input type="text" name="apellido"
                                                      placeholder="Ingrese sus apellidos" required
                                                      pattern="[A-Za-z]{2,40}"/></h5>
            <tr>
                <td><h6><label for="tipo">Tipo Usuario:</label></h6></td>
                <td><select name="tipoUsuario" id="tipo">
                    <option>Administrador</option>
                    <option>Asistente Inventario</option>
                    <option>Asistente Ventas</option>
                    <option>Asistente Compras</option>
                    <option>Cajero</option>
                    <option>Jefe de produccion</option>
                </select></td>
            </tr>
            <br><br>
            <h6><label>Contraseña: </label><br> <input type="password" name="Clave"
                                                       placeholder="Ingrese una contraseña"><br></h6>
            <br> <input type="submit" value="Registrar"/>
        </form>
    </div>
    <div class="Contenedorimg">
        <img class="estiloimg" src="../../img/imgRegistro.png" alt="Logo Migas">
    </div>
</section>


</body>
</html>


<%@include file="/includes/pie.jsp" %>