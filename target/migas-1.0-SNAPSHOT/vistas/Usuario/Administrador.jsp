<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.Consultas" %>
<%@ page import="java.util.Iterator" %>
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
            <th class="thtabla">Id usuario</th>
            <th class="thtabla">Usuario</th>
            <th class="thtabla">Nombre Usuario</th>
            <th class="thtabla">Apellido Usuario</th>
            <th class="thtabla">Tipo de Usuario</th>
            <th class="thtabla">Clave de Usuario</th>
            <th class="thtabla">Edición</th>
            <th class="thtabla">Eliminación</th>
        </tr>
        </thead>
        <%
            Consultas dao = new Consultas();
            List<usuario> list = dao.listar();
            Iterator<usuario> iter = list.iterator();
            usuario usuario = null;
            while (iter.hasNext()) {
                usuario = iter.next();
        %>
        <tr>
            <td class="tdtabla"><%= usuario.getIdUsuario() %>
            </td>
            <td class="tdtabla"><%= usuario.getUsuario() %>
            </td>
            <td class="tdtabla"><%= usuario.getNombre() %>
            </td>
            <td class="tdtabla"><%= usuario.getApellido() %>
            </td>
            <td class="tdtabla"><%=usuario.getTipoUsario() %>
            </td>
            <td class="tdtabla"><%=usuario.getClave() %>
            </td>
            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=obtenerId=<%= usuario.getIdUsuario() %>">Editar</a>
            </td>
            <td class="tdtabla"><a class="nav-link"
                                   href="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=Eliminar=<%= usuario.getIdUsuario() %>">Eliminar</a>
            </td>


        </tr>
        <%}%>

    </table>

</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>