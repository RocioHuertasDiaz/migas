<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Beans.Insumo" %>
<%@ page import="com.migas.Model.Dao.ConsultaInsumo" %>
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
<h2>LISTA DE INSUMOS Y MATERIA PRIMA</h2>
<div>
    <table >
        <thead>
        <tr>
            <th>Id Insumo</th>
            <th>Nombre Insumo</th>
            <th>Cantidad</th>
            <th>Proveedor</th>
            <th>Fecha de ingreso</th>
            <th>Fecha de vencimiento</th>
            <th>Lote Insumo</th>
            <th>Precio Unitario</th>
            <th>Edición</th>
            <th>Eliminación</th>
        </tr>
        </thead>
        <%
            ConsultaInsumo dao = new ConsultaInsumo();
            List<Insumo> list = dao.listar();
            Iterator<Insumo> iter = list.iterator();
            Insumo insumo = null;
            while (iter.hasNext()) {
            insumo = iter.next();
        %>
        <tr>
            <td><%= insumo.getIdInsumo() %> </td>
            <td><%= insumo.getNombreInsumo() %> </td>
            <td><%= insumo.getCantidadInsumo() %> </td>
            <td><%= insumo.getProveedor() %> </td>
            <td><%= insumo.getFechaIngreso() %> </td>
            <td><%= insumo.getFechaVencimiento() %> </td>
            <td><%= insumo.getLoteInsumo() %></td>
            <td><%= insumo.getPrecioUnitario() %> </td>
            <td><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=obtenerId=<%= insumo.getIdInsumo() %>">Editar</a></td>
            <td><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=Eliminar=<%= insumo.getIdInsumo() %>">Eliminar</a> </td>
        </tr>
        <%}%>

    </table>
<br>
    <br>
    <br>
    <br>

    <h3>Por favor registre la materia Prima y/o Insumo:   <a href="RegistroInsumo.jsp"> Aquí</a></h3>
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>