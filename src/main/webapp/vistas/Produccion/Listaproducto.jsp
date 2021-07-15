<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaProducto" %>
<%@ page import="com.migas.Model.Beans.Producto" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>

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
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Inventario de producto Terminado:</h2><br>

        <div class="estiloTabla">

            <table>
                <thead>
                <tr>
                    <th>Id producto</th>
                    <th>Nombre Producto</th>
                    <th>Cantidad</th>
                    <th>Fecha Elaboracion</th>
                    <th>Fecha Vencimiento</th>
                    <th>Lote del producto</th>
                    <th>Precio Unitario</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    ConsultaProducto dao = new ConsultaProducto();
                    List<Producto> list = dao.listar();
                    Iterator<Producto> iter = list.iterator();
                    Producto Producto = null;
                    while (iter.hasNext()) {
                        Producto = iter.next();
                %>
                <tr>
                    <td><%= Producto.getIdProducto() %>
                    </td>
                    <td><%= Producto.getNombreProducto() %>
                    </td>
                    <td><%= Producto.getCantidadProducto()%>
                    </td>
                    <td><%= Producto.getFechaElaboracion()%>
                    </td>
                    <td><%= Producto.getFechaVencimiento()%>
                    </td>
                    <td><%= Producto.getLoteProducto() %>
                    </td>
                    <td><%= Producto.getPrecioUnitario()%>
                    </td>
                    <td>
                        <a href="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=editar=<%= Producto.getIdProducto()%>">
                            <i class="far fa-edit" style="color: darkolivegreen;"></i></a></td>
                </tr>
                <%}%>
            </table>

        </div>
        <br>
        <input href="RegistroProducto.jsp" class="btn btn-primary btn-block boton" type="submit"
               value="Registrar un Nuevo Producto"/>
        <br>
    </div>
</div>

</html>
<%@include file="/includes/pie.jsp" %>