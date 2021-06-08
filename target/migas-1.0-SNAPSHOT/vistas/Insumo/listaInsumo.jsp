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
    <link rel="stylesheet" href="../../../css/estiloBase.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
</head>
<body>
<h2>LISTA DE INSUMOS Y MATERIA PRIMA</h2>
<div>
    <table class="tabla">
        <thead>
        <tr>
            <th class="thtabla">Id Insumo</th>
            <th class="thtabla">Nombre Insumo</th>
            <th class="thtabla">Cantidad</th>
            <th class="thtabla">Proveedor</th>
            <th class="thtabla">Fecha de ingreso</th>
            <th class="thtabla">Fecha de vencimiento</th>
            <th class="thtabla">Lote Insumo</th>
            <th class="thtabla">Precio Unitario</th>
            <th class="thtabla">Edición</th>
            <th class="thtabla">Eliminación</th>
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
            <td class="tdtabla"><%= insumo.getIdInsumo() %> </td>
            <td class="tdtabla"><%= insumo.getNombreInsumo() %> </td>
            <td class="tdtabla"><%= insumo.getCantidadInsumo() %> </td>
            <td class="tdtabla"><%= insumo.getProveedor() %> </td>
            <td class="tdtabla"><%= insumo.getFechaIngreso() %> </td>
            <td class="tdtabla"><%= insumo.getFechaVencimiento() %> </td>
            <td class="tdtabla"><%= insumo.getLoteInsumo() %></td>
            <td class="tdtabla"><%= insumo.getPrecioUnitario() %> </td>
            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=obtenerId=<%= insumo.getIdInsumo() %>">Editar</a></td>
            <td class="tdtabla"><a class="nav-link"
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