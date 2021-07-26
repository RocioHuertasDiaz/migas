<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>


<div class="menu">
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

<div class="contenido">
    <div class="container-sm">
        <br>
        <h2 class="tituloContenido">Registro de producto:</h2><br>

        <div class="login-box">
            <h3>Formulario de Registro</h3>
            <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=guardar"
                  method="post">
                <div class="row justify-content-around">
                    <h5><label>Usuario: </label><br><input class="inputtext" type="text" name="usuario"
                                                           placeholder="Ingrese su usuario" pattern="[A-Za-z]{2,40}"
                                                           autofocus/></h5>
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
                </div>
            </form>
        </div>
    </div>

</div>
</html>

<%@include file="/includes/pie.jsp" %>