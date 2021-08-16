<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Beans.Producto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaProducto" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>

<html>

<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>

        <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
        <li><a href="../Compras/AreaCompras.jsp">COMPRAS</a></li>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Inventario de Insumos</a></li>
            <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro ingreso Insumo</a></li>
            <li class="nav-item"><a href="">Registro devoluciones a proveedor</a></li>
        </ul>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">PROVEEDORES</a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaProveedor.jsp">Lista Proveedores</a></li>
            <li class="nav-item"><a href="../Compras/RegistroProveedor.jsp">Registro proveedores</a></li>
        </ul>
    </nav>
</div>

<div class="contenido">
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Inventario de producto Terminado:</h2><br><br>

        <h2 class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumo</a></h2>

        <table>
            <thead>
            <tr>
                <th>Id Insumo</th>
                <th>Nombre Producto</th>
                <th>Cantidad</th>
                <th>Fecha Elaboracion</th>
                <th>Fecha Vencimiento</th>
                <th>Nombre Proveedor</th>
                <th>Lote del producto</th>
                <th>Precio Unitario</th>
                <th></th>
            </tr>
            </thead>
            <%
                ConsultaProducto dao = new ConsultaProducto();
                List<Producto> list = dao.listar();
                Iterator<Producto> iter = list.iterator();
                Producto producto = null;
                while (iter.hasNext()) {
                    producto = iter.next();
            %>
            <tr>
                <td><%= producto.getIdProducto() %>
                </td>
                <td><%= producto.getNombreProducto() %>
                </td>
                <td><%= producto.getCantidadProducto()%>
                </td>
                <td><%= producto.getFechaElaboracion()%>
                </td>
                <td><%= producto.getFechaVencimiento()%>
                </td>
                <td><%= producto.getLoteProducto() %>
                </td>
                <td><%= producto.getPrecioUnitario()%>
                </td>
                <td>
                    <a href="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=ObtenerId&idProducto=<%=producto.getIdProducto()%>">
                        <i class="far fa-edit" style="color: darkolivegreen;"></i></a></td>
            </tr>
            <%}%>
        </table>

    </div>
    <br>
    <br>
</div>
</html>
<%@include file="/includes/pie.jsp" %>