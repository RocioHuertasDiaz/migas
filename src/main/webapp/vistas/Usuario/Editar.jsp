<%@ page import="com.migas.Model.Dao.Consultas" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="../../includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Registro</title>
</head>
<body>

<section class="estiloSeccion">
    <div class="ContenedorForm">
        <h1>Formulario de actualización</h1>

        <form action="http://localhost:8080/migas_war_exploded/ServletUsuario?obtenerId" method="get">

            <h3>Actualizar datos de usuario</h3>

            <%
                Consultas dao = new Consultas();
                List<usuario> list = dao.listar();
                Iterator<usuario> iter = list.iterator();
                usuario usuario = null;
                while (iter.hasNext()) {
                    usuario = iter.next();

            %>

            <h1>Id: <%= usuario.getIdUsuario() %>
            </h1>
            <table>
                <tr>
                    <td><label>Usuario</label></td>
                    <td><input type="text" name="id" value=" <%= usuario.getUsuario() %>"
                               placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>

                <tr>
                    <td><label>Nombre</label></td>
                    <td><input type="text" name="nombre" value='<%=usuario.getNombre() %>'
                               placeholder="Ingrese el nombre" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>
                <tr>
                    <td><label>Apellido</label></td>
                    <td><input type="text" name="apellido" value='<%= usuario.getApellido() %>'
                               placeholder="Ingrese el nombre" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>
                <tr>
                    <td><label for="tipo">Tipo Usuario:</label></td>
                    <td><select name="tipoUsuario" id="tipo" value="<%=usuario.getTipoUsario() %>">
                        <option>Administrador</option>
                        <option>Asistente Inventario</option>
                        <option>Asistente Ventas</option>
                        <option>Asistente Compras</option>
                        <option>Cajero</option>
                        <option>Jefe de produccion</option>
                    </select></td>
                </tr>

                <tr>
                    <td><label>Contraseña</label></td>
                    <td><input type="password" name="Clave" value='<%=usuario.getClave() %>'
                               placeholder="Ingrese una contraseña" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>
                <br> <input type="submit" value="Actualizar"/>
                <br> <input type="submit" value="Cancelar"/>
            </table>
            <%}%>
        </form>
</body>
</html>


<%@include file="/includes/pie.jsp" %>
