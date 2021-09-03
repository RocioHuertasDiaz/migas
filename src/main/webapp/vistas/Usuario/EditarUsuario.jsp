<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@include file="../../includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>

<div class="menu">
    <h3 class="tituloRoll"> Administrador: <br>JaimeC </h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>
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

    <div class="card-body px-5 py-5">
        <h3 class="card-title text-left mb-3">Actualización de Usuario:</h3><br>
        <% usuario Usuario = (usuario) request.getAttribute("Usuario"); %>
        <form action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=editar"
              method="post">
            <input type="hidden" name="idUsuario" value="<%=Usuario.getIdUsuario()%>">
            <div class="form-control">
                <div class="form-group"><label>Usuario: </label>
                    <input class="form-control p_input"
                           value="<%=Usuario.getUsuario()%>"
                           type="text"
                           name="usuario"
                           required
                           pattern="[A-Za-z ]{2,40}"/></div>
                <div class="form-group"><label>Nombre: </label>
                    <input class="form-control p_input"
                           type="text"
                           name="nombre"
                           value="<%=Usuario.getNombre()%>"
                           required
                           pattern="[A-Za-z]{2,40}"/></div>

                <div class="form-group"><label>Apellido: </label>
                    <input class="form-control p_input"
                           type="text"
                           name="apellido"
                           value="<%=Usuario.getApellido()%>"
                           required
                           pattern="[A-Za-z]{2,40}"/></div>

                <div class="form-group"><label>Contraseña: </label>
                    <input class="form-control p_input"
                           type="password"
                           name="Clave"
                           value="<%=Usuario.getClave()%>"
                           required/>
                </div>

                <div class="form-group"><label for="tipo">Tipo de Usuario:</label>
                    <select class="form-control p_input" name="tipoUsuario" id="tipo">
                        <option>Administrador</option>
                        <option>Asistente Inventario</option>
                        <option>Asistente Ventas</option>
                        <option>Asistente Compras</option>
                        <option>Cajero</option>
                        <option>Jefe de produccion</option>
                    </select>
                </div>

                <div class="form-group"><label for="estado">Estado de usuario:</label>
                    <select class="form-control p_input" name="estadoUsuario" id="estado">
                        <option>Activo</option>
                        <option>Inactivo</option>
                    </select>
                </div>

                <div>
                    <br> <input class="btn btn-primary boton" type="submit" value="Actualizar"/>
                </div>
            </div>
        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>