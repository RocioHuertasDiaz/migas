<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaProducto" %>
<%@ page import="com.migas.Model.Beans.Producto" %>
<%@ page import="com.migas.Model.Dao.ConsultaVenta" %>
<%@ page import="com.migas.Model.Beans.Venta" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>RegistroVenta</title>
    <link rel="stylesheet" href="../../../css/estiloBase.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
</head>
<body>
<h2>LISTA DE VENTAS</h2>
<div>
    <table class="tabla">
        <thead>
        <tr>
            <th class="thtabla">Número Factura</th>
            <th class="thtabla">Fecha Factura</th>
            <th class="thtabla">Producto</th>
            <th class="thtabla">Cantidad</th>
            <th class="thtabla">Precio Unitario</th>
            <th class="thtabla">Lote Producto</th>
            <th class="thtabla">Fecha de vencimiento</th>
            <th class="thtabla">Descuento</th>
            <th class="thtabla">Total</th>
            <th class="thtabla">Nit Cliente</th>

            <th class="thtabla">Edición</th>
            <th class="thtabla">Eliminación</th>
        </tr>
        </thead>
        <%
            ConsultaVenta dao = new ConsultaVenta();
            List<Venta> list = dao.listar();
            Iterator<Venta> iter = list.iterator();
            Venta venta = null;
            while (iter.hasNext()) {
                venta = iter.next();
        %>
        <tr>
            <td class="tdtabla"><%= venta.getIdFacturaV() %> </td>
            <td class="tdtabla"><%= venta.getFechaFactura() %> </td>
            <td class="tdtabla"><%= venta.getIdProducto() %> </td>
            <td class="tdtabla"><%= venta.getCantidad() %> </td>
            <td class="tdtabla"><%= venta.getPrecioUnitario() %> </td>
            <td class="tdtabla"><%= venta.getLoteProducto() %> </td>
            <td class="tdtabla"><%= venta.getFechaVencimiento() %> </td>
            <td class="tdtabla"><%= venta.getDescuento() %> </td>
            <td class="tdtabla"><%= venta.getTotalVenta() %> </td>
            <td class="tdtabla"><%= venta.getNitCliente() %> </td>

            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=obtenerId=<%= venta.getIdFacturaV() %>">Editar</a></td>
            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=Eliminar=<%= venta.getIdFacturaV() %>">Eliminar</a> </td>
        </tr>
        <%}%>

    </table>
<br>
    <br>
    <br>
    <br>

    <h3>Registre nueva venta <a href="RegistroVenta.jsp"> Aquí</a></h3>
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>