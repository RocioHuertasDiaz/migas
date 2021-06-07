<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultasClient" %>
<%@ page import="com.migas.Model.Beans.Cliente" %>
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
<h2>Bienvenid@ al sistema MIGAS</h2>
<div>
    <table class="tabla">
        <thead>
        <tr>
            <th class="thtabla">NIT Proveedor</th>
            <th class="thtabla">Razón Social</th>
            <th class="thtabla">Nombre Contacto</th>
            <th class="thtabla">Dirección</th>
            <th class="thtabla">Correo</th>
            <th class="thtabla">Teléfono</th>
            <th class="thtabla">Tipo de Cliente</th>
            <th class="thtabla">Edición</th>
            <th class="thtabla">Eliminación</th>
        </tr>
        </thead>
        <%
            ConsultasClient dao = new ConsultasClient();
            List<Cliente> list = dao.listar();
            Iterator<Cliente> iter = list.iterator();
            Cliente cliente = null;
            while (iter.hasNext()) {
                cliente = iter.next();
        %>
        <tr>
            <td class="tdtabla"><%= cliente.getNitCliente() %> </td>
            <td class="tdtabla"><%= cliente.getNombreCliente() %> </td>
            <td class="tdtabla"><%= cliente.getNombreContacClien() %> </td>
            <td class="tdtabla"><%= cliente.getDireccionCliente() %> </td>
            <td class="tdtabla"><%= cliente.getEmailCliente() %> </td>
            <td class="tdtabla"><%= cliente.getTelefonoCliente() %></td>
            <td class="tdtabla"><%= cliente.getTipoCliente() %> </td>

            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=obtenerId=<%= cliente.getNitCliente() %>">Editar</a></td>
            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=Eliminar=<%= cliente.getNitCliente() %>">Eliminar</a> </td>
        </tr>
        <%}%>

    </table>
<br>
    <br>
    <br>
    <br>

    <h3>Si el cliente no existe por favor regístrelo <a href="RegistroCli.jsp"> Aquí</a></h3>
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>