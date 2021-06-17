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
    <title>Menu</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <link rel="stylesheet" href="../../css/estiloBase.css">
</head>
<body>
<h2>LISTA DE VENTAS</h2>
<div>
    <table">
        <thead>
        <tr>
            <th>Fecha Factura</th>
            <th >Producto</th>
            <th >Cantidad</th>
            <th>Precio Unitario</th>
            <th>Lote Producto</th>
            <th>Fecha de vencimiento</th>
            <th>Descuento</th>
            <th>Total</th>
            <th>Nit Cliente</th>

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