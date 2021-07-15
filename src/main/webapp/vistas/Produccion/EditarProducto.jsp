<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Dao.ConsultaProducto" %>
<%@ page import="com.migas.Model.Beans.Producto" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="../../includes/encabezado.jsp" %>

<html>

<div class="menu">
    <h3 class="tituloRoll"> Analista de Inventarios: <br> <%= usuario.getNombre()%> <%= usuario.getApellido()%>
    </h3>
    <nav>
        <ul>
            <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
            <li><a href="AsistenteInventarios.jsp">PRODUCCION</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">PRODUCTO TERMINADO </a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="/vistas/Produccion/RegistroProducto.jsp">Registro Producto</a></li>
                    <li class="nav-item"><a href="">Registro Devolucion Producto</a></li>
                    <li class="nav-item"><a href="/vistas/Produccion/Listaproducto.jsp">Consulta Inventario de
                        producto</a></li>
                </ul>
            </nav>

        </ul>
    </nav>
</div>
<div class="contenido">
    <div class="container-sm">
        <br>
        <h2 class="tituloContenido">Edicion de Producto terminado:</h2><br>

        <form action="http://localhost:8080/migas_war_exploded/ServletProducto?editar" method="get">

            <h3>Actualizar datos de usuario</h3>
            <%
                /*ConsultaProducto dao = new ConsultaProducto();
                int id = Integer.parseInt((String) request.getAttribute("idProducto"));
                producto p = (Producto) dao.obtenerProducto(id);*/
            %>

            <h1>Id: <input TYPE="hidden" name="txtid" <%/*u.getIdUsuario()*/%>
            </h1>
            <table>
                <tr>
                    <td><label>Usuario</label></td>
                    <td><input type="text" name="iden" value=" <%/*u.getIdUsuario()*/%>"
                               placeholder="Digite nombre usuario" autofocus required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>

                <tr>
                    <td><label>Nombre</label></td>
                    <td><input type="text" name="nombre" value='<%/*u.getIdUsuario()*/%>'
                               placeholder="Ingrese el nombre" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>
                <tr>
                    <td><label>Apellido</label></td>
                    <td><input type="text" name="apellido" value='<%/*u.getIdUsuario()*/%>'
                               placeholder="Ingrese el apellido" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>

                <tr>
                    <td><label>Contraseña</label></td>
                    <td><input type="password" name="Clave" value="<%/*u.getIdUsuario()*/%>">
                        placeholder="Ingrese una contraseña" required pattern=[a-zA-Z0-9]{2,40}>
                    </td>
                </tr>
                <tr>
                    <td><label for="tipo">Tipo Usuario:</label></td>
                    <td><select name="tipoUsuario" id="tipo" value="<%/*u.getIdUsuario()*/%>">
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
                    <td><select name="estadoUsuario" id="estado" value="<%/*u.getIdUsuario()*/%>">
                        <option>Activo</option>
                        <option>Inactivo</option>
                    </select></td>
                </tr>


                <br> <input type="submit" name=accion value="Actualizar"/>

            </table>

        </form>
    </div>
</div>
</html>
<%@include file="/includes/pie.jsp" %>