<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="com.migas.Model.Beans.usuario" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="../../includes/encabezado.jsp" %>

<html>
<head>
    <title>editarUsuario</title>
    <link rel="stylesheet" href="../../../css/estiloBase.css">
</head>
<body>
<section class="estiloSeccion">
    <div class="ContenedorForm">
        <h1>Formulario de actualización</h1>

        <form action="http://localhost:8080/migas_war_exploded/ServletUsuario?editar" method="get">

            <h3>Actualizar datos de usuario</h3>
            <%
                ConsultaUsuario dao = new ConsultaUsuario();
                int id = Integer.parseInt((String) request.getAttribute("idUsuario"));
                usuario u =(usuario) dao.obtenerUsuario(id);
            %>

            <h1>Id: <input TYPE="hidden" name="txtid" <%=u.getIdUsuario()%></h1>
            <table>
                <tr>
                    <td><label>Usuario</label></td>
                    <td><input type="text" name="iden" value=" <%= u.getUsuario()%>"
                               placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>

                <tr>
                    <td><label>Nombre</label></td>
                    <td><input type="text" name="nombre" value='<%=u.getNombre()%>'
                               placeholder="Ingrese el nombre" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>
                <tr>
                    <td><label>Apellido</label></td>
                    <td><input type="text" name="apellido" value='<%= u.getApellido()%>'
                               placeholder="Ingrese el apellido" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>

                <tr>
                    <td><label>Contraseña</label></td>
                    <td><input type="password" name="Clave" value="<%=u.getClave() %>">
                        placeholder="Ingrese una contraseña" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>
                <tr>
                    <td><label for="tipo">Tipo Usuario:</label></td>
                    <td><select name="tipoUsuario" id="tipo" value="<%=u.getTipoUsuario()%>">
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
                    <td><select name="estadoUsuario" id="estado" value="<%=u.getTipoUsuario()%>">
                        <option>Activo</option>
                        <option>Inactivo</option>
                    </select></td>
                </tr>


                <br> <input type="submit" name=accion value="Actualizar"/>

            </table>

        </form>
    </div>
</section>
</body>
</html>
<%@include file="/includes/pie.jsp" %>