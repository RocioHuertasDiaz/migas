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
</head>
<body>
<h2>Bienvenid@ al sistema MIGAS</h2>
<div>
    <table class="tabla">
        <thead>
        <tr>
            <th>Id usuario</th>
            <th>Usuario</th>
            <th>Nombre Usuario</th>
            <th>Apellido Usuario</th>
            <th>Tipo de Usuario</th>
            <th>Clave de Usuario</th>
            <th>Edición</th>
            <th>Eliminación</th>
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
            <td><%= usuario.getIdUsuario() %> </td>
            <td><%= usuario.getUsuario() %>  </td>
            <td><%=usuario.getNombre() %> </td>
            <td><%= usuario.getApellido() %> </td>
            <td><%=usuario.getTipoUsario() %> </td>
            <td><%=usuario.getClave() %> </td>
            <td><a class="nav-link" href="Editar.jsp">Editar</a></td>
            <td><a class="nav-link" href="">Eliminar</a></td>
        </tr>
        <%}%>

    </table>

</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>