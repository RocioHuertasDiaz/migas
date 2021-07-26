<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<%@include file="../../includes/encabezado.jsp" %>

<html>
<div class="menu">
    <h3 class="tituloRoll"> Administrador: <br> <%= usuario.getNombre()%> <%= usuario.getApellido()%>
    </h3>
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
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=editar"  method="POST">


            <div class="row justify-content-around">
                <% usuario Usuario = (usuario) request.getAttribute("Usuario"); %>

                <div class="col-6"><label class="inputtext">Id Usuario: </label>
                    <%= Usuario.getIdUsuario()%>
                </div>
                <table>
                    <tr>
                        <td><label>Usuario</label></td>
                        <td><input type="text" name="iden" value=" <%= Usuario.getUsuario()%>"
                                   placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Nombre</label></td>
                        <td><input type="text" name="nombre" value='<%=Usuario.getNombre()%>'
                                   placeholder="Ingrese el nombre" required pattern=[a-zA-Z0-9]{2,40}>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Apellido</label></td>
                        <td><input type="text" name="apellido" value='<%= Usuario.getApellido()%>'
                                   placeholder="Ingrese el apellido" required pattern=[a-zA-Z0-9]{2,40}>
                        </td>
                    </tr>

                    <tr>
                        <td><label>Contraseña</label></td>
                        <td><input type="password" name="Clave" value="<%=Usuario.getClave() %>"
                                   required>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="tipo">Tipo Usuario:</label></td>
                        <td><select name="tipoUsuario" id="tipo" value="<%=Usuario.getTipoUsuario()%>">
                            <option>Administrador</option>
                            <option>Asistente Inventario</option>
                            <option>Asistente Ventas</option>
                            <option>Asistente Compras</option>
                            <option>Cajero</option>
                            <option>Jefe de produccion</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td><label for="estado">Estado de Usuario:</label></td>
                        <td><select name="estadoUsuario" id="estado" value="<%=Usuario.getTipoUsuario()%>">
                            <option>Activo</option>
                            <option>Inactivo</option>
                        </select></td>
                    </tr>


                    <br> <input type="submit" name=accion value="Actualizar"/>

                </table>
            </div>

        </form>
    </div>

<%@include file="/includes/pie.jsp" %>