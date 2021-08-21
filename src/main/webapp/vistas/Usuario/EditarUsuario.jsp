<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@include file="../../includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<div class="menu">
    <h3 class="tituloRoll"> Administrador: <br>JaimeC </h3>
    <nav>
        <ul>
            <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">USUARIOS </a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="RegistroUsuario.jsp">Registro Usuario</a></li>
                    <li class="nav-item"><a href="Administrador.jsp">Consulta Usuarios Registrados</a></li>
                </ul>
            </nav>
        </ul>
    </nav>
</div>

<div class="contenido">
    <div class="container-sm">
        <br>
        <h2 class="tituloContenido">Actualización de Usuario:</h2><br>
        <% usuario Usuario = (usuario) request.getAttribute("Usuario"); %>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=editar"
              method="post">


            <input type="hidden" name="idUsuario" value="<%=Usuario.getIdUsuario()%>">


            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext">Usuario: </label>
                    <input class="form-control"
                           value="<%=Usuario.getUsuario()%>"
                           type="text"
                           name="usuario"
                           required
                           pattern="[A-Za-z ]{2,40}"/></div>
                <br>
                <div class="col-6"><label class="inputtext">Nombre: </label>
                    <input class="form-control"
                           type="text"
                           name="nombre"
                           value="<%=Usuario.getNombre()%>"
                           required
                           pattern="[A-Za-z]{2,40}"/></div>

                <div class="col-6"><label class="inputtext">Apellido: </label>
                    <input class="form-control"
                           type="text"
                           name="apellido"
                           value="<%=Usuario.getApellido()%>"
                           required
                           pattern="[A-Za-z]{2,40}"/></div>

                <div class="col-6"><label class="inputtext">Contraseña: </label>
                    <input class="form-control"
                           type="password"
                           name="Clave"
                           value="<%=Usuario.getClave()%>"
                           required/>
                </div>
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
                    <br> <input class="btn btn-primary boton" type="submit" value="Actualizar"/>
                </div>
            </div>

        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>