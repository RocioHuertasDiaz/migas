<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro</title>
    <!--<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->
    <link rel="stylesheet" href="../../css/estiloBase.css">
</head>
<body>
<div class="Contenedor">
    <div class="Contenedor30">
        <nav>
            <ul>
                <li><a href="../Usuario/inicioS.jsp">Home</a></li>
                <li><a href="#">Nuestra empresa</a></li>
                <li><a href="#">Organigrama</a></li>
                <li><a href="#">Regulación</a></li>
                <li><a href="#">Contacto</a></li>
            </ul>
        </nav>
    </div>

    <div class="Contenedor70">
        <div class="login-box">
            <h3>Formulario de Registro</h3>
            <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=guardar"
                  method="post">
                <h5><label>Usuario: </label><br><input class="inputtext" type="text" name="usuario"
                                                        placeholder="Ingrese su usuario" pattern="[A-Za-z]{2,40}"
                                                        autofocus/> </h5>
                <h5><label>Nombres: </label><br><input class="inputtext" type="text" name="nombre"
                                                        placeholder="Ingrese sus nombres" required
                                                        pattern="[A-Za-z]{2,40}"/></h5>
                <h5><label>Apellidos: </label><br><input class="inputtext" type="text" name="apellido"
                                                          placeholder="Ingrese sus apellidos" required
                                                          pattern="[A-Za-z]{2,40}"/></h5>

                <h5><label>Contraseña: </label><br><input class="inputtext" type="password" name="Clave"
                                                           placeholder="Ingrese una contraseña"></h5>
                <tr>
                    <td><h5><label for="tipo">Tipo de Usuario:</label></h5></td>
                    <td><select class="inputtext" name="tipoUsuario" id="tipo">
                        <option>Administrador</option>
                        <option>Asistente Inventario</option>
                        <option>Asistente Ventas</option>
                        <option>Asistente Compras</option>
                        <option>Cajero</option>
                        <option>Jefe de produccion</option>
                    </select></td>
                </tr>
                <tr>
                    <td><h5><label for="estado">Estado de usuario:</label></h5></td>
                    <td><select class="inputtext" name="estadoUsuario" id="estado">
                        <option>Activo</option>
                        <option>Inactivo</option>
                    </select></td>
                </tr>
                <br>
                <br> <input class="nav-link inputtext" type="submit" value="Registrar"/>
            </form>
        </div>
    </div>

</div>


</body>
</html>


<%@include file="/includes/pie.jsp" %>