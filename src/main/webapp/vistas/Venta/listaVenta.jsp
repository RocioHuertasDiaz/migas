<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaProducto" %>
<%@ page import="com.migas.Model.Beans.Producto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Menu</title>
    <link rel="stylesheet" href="../../../css/estiloBase.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
</head>
<body>
<h2>LISTA DE PRODUCTO TERMINADO</h2>
<div>
    <table class="tabla">
        <thead>
        <tr>
            <th class="thtabla">Id Producto</th>
            <th class="thtabla">Nombre</th>
            <th class="thtabla">Cantidad</th>
            <th class="thtabla">Fecha de elaboración</th>
            <th class="thtabla">Fecha de vencimiento</th>
            <th class="thtabla">Lote Producto</th>
            <th class="thtabla">Precio Unitario</th>
            <th class="thtabla">Edición</th>
            <th class="thtabla">Eliminación</th>
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
            <td class="tdtabla"><%= producto.getIdProducto() %> </td>
            <td class="tdtabla"><%= producto.getNombreProducto() %> </td>
            <td class="tdtabla"><%= producto.getCantidadProducto() %> </td>
            <td class="tdtabla"><%= producto.getFechaElaboracion() %> </td>
            <td class="tdtabla"><%= producto.getFechaVencimiento() %> </td>
            <td class="tdtabla"><%= producto.getLoteProducto() %></td>
            <td class="tdtabla"><%= producto.getPrecioUnitario() %> </td>

            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=obtenerId=<%= producto.getIdProducto() %>">Editar</a></td>
            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=Eliminar=<%= producto.getIdProducto() %>">Eliminar</a> </td>
        </tr>
        <%}%>

    </table>
<br>
    <br>
    <br>
    <br>

    <h3>Por favor registre el producto <a href="RegistroProducto.jsp"> Aquí</a></h3>
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>