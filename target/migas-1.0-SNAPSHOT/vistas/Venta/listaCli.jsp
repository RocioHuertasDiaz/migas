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
    <!--<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->


    <link rel="stylesheet" href="../../css/estiloBase.css">
</head>
<body>
<h2>Bienvenid@ al sistema MIGAS</h2>
<div>
    <table>
        <thead>
        <tr>
            <th>NIT Proveedor</th>
            <th>Razón Social</th>
            <th>Nombre Contacto</th>
            <th>Dirección</th>
            <th>Correo</th>
            <th>Teléfono</th>
            <th>Tipo de Cliente</th>
            <th>Edición</th>
            <th>Eliminación</th>
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
            <td><%= cliente.getNitCliente() %>
            </td>
            <td><%= cliente.getNombreCliente() %>
            </td>
            <td><%= cliente.getNombreContacClien() %>
            </td>
            <td><%= cliente.getDireccionCliente() %>
            </td>
            <td><%= cliente.getEmailCliente() %>
            </td>
            <td><%= cliente.getTelefonoCliente() %>
            </td>
            <td><%= cliente.getTipoCliente() %>
            </td>

            <td><a class="nav-link"
                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=obtenerId=<%= cliente.getNitCliente() %>">Editar</a>
            </td>
            <td><a class="nav-link"
                   href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=Eliminar=<%= cliente.getNitCliente() %>">Eliminar</a>
            </td>
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