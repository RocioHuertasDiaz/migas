<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultasProv" %>
<%@ page import="com.migas.Model.Beans.Proveedor" %>
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
<h2>LISTADO DE PROVEEDORES</h2>
<div>
    <table class="tabla">
        <thead>
        <tr>
            <th class="thtabla">NIT Proveedor</th>
            <th class="thtabla">Razón Social</th>
            <th class="thtabla">Nombre Contacto</th>
            <th class="thtabla">Correo Electrónico</th>
            <th class="thtabla">Dirección</th>
            <th class="thtabla">Teléfono</th>
            <th class="thtabla">Edición</th>
            <th class="thtabla">Eliminación</th>
        </tr>
        </thead>
        <%
            ConsultasProv dao = new ConsultasProv();
            List<Proveedor> list = dao.listar();
            Iterator<Proveedor> iter = list.iterator();
            Proveedor proveedor = null;
            while (iter.hasNext()) {
                proveedor = iter.next();
        %>
        <tr>
            <td class="tdtabla"><%= proveedor.getNitPro() %> </td>
            <td class="tdtabla"><%= proveedor.getRazonSocialPro() %> </td>
            <td class="tdtabla"><%= proveedor.getNombreContactoPro() %> </td>
            <td class="tdtabla"><%= proveedor.getEmailPro() %> </td>
            <td class="tdtabla"><%= proveedor.getDireccionPro() %> </td>
            <td class="tdtabla"><%= proveedor.getTelefonoPro() %></td>

            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=obtenerId=<%= proveedor.getNitPro() %>">Editar</a></td>
            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=Eliminar=<%= proveedor.getNitPro() %>">Eliminar</a> </td>
        </tr>
        <%}%>

    </table>
    <br>
    <br>
    <br>
    <br>

    <h3>Si el proveedor no existe por favor regístrelo <a href="RegistroProv.jsp"> Aquí</a></h3>
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>