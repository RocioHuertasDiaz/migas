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
        <h2 class="tituloContenido">Registro de Usuario:</h2><br>


        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=guardar"
              method="post">
            <div class="row justify-content-around">
                <div class="col-6"><label class="inputtext">Usuario: </label>
                    <input class="form-control"
                           type="text"
                           name="usuario"
                           placeholder="Ingrese su usuario"
                           pattern="[A-Za-z]{2,40}"
                           autofocus/></div>
                <div class="col-6"><label class="inputtext">Nombres: </label>
                    <input class="form-control"
                           type="text"
                           name="nombre"
                           placeholder="Ingrese sus nombres" required
                           pattern="[A-Za-z]{2,40}"/></div>
                <br>
                <div class="col-6"><label class="inputtext">Apellidos: </label>
                    <input class="form-control"
                           type="text"
                           name="apellido"
                           placeholder="Ingrese sus apellidos" required
                           pattern="[A-Za-z]{2,40}"/></div>

                <div class="col-6"><label class="inputtext">Contraseña: </label>
                    <input class="form-control"
                           type="password"
                           name="Clave"
                           placeholder="Ingrese una contraseña"></div>
                <br>
                <div class="col-6"><label for="tipo">Tipo de Usuario:</label>
                    <select class="form-control" name="tipoUsuario" id="tipo">
                        <option>Administrador</option>
                        <option>Asistente Inventario</option>
                        <option>Asistente Ventas</option>
                        <option>Asistente Compras</option>
                        <option>Cajero</option>
                        <option>Jefe de produccion</option>
                    </select>
                </div>

                <div class="col-6"><label for="estado">Estado de usuario:</label>
                    <select class="form-control" name="estadoUsuario" id="estado">
                        <option>Activo</option>
                        <option>Inactivo</option>
                    </select>
                </div>

                <div>
                    <br>
                    <br> <input class="btn btn-primary boton" type="submit" value="Registrar"/>
                </div>
            </div>

        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>