<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Actualizar Usuario</h1>
<form action="ServletUsuario?action=Obtenerid" method="post" >
    <table>
        <tr>
            <td><label>Id Usuario</label></td>
            <td><input type="text" name="id" value='<c:out value="${usuario.idUsuario}"></c:out>' ></td>
        </tr>
        <tr>
            <td><label>Usuario</label></td>
            <td><input type="text" name="Usuario" value='<c:out value="${usuario.idenUsuario}"></c:out>' ></td>
        </tr>
        <tr>
            <td><label>Nombre</label></td>
            <td><input type="text" name="nombre" value='<c:out value="${usuario.nombreUsuario}"></c:out>' ></td>
        </tr>
        <tr>
        <tr>
            <td><label>Apellido</label></td>
            <td><input type="text" name="nombre" value='<c:out value="${usuario.apellidoUsuario}"></c:out>' ></td>
        </tr>
        <tr>
            <td><label>Tipo Usuario</label></td>
            <td><input type="text" name="tipo" value='<c:out value="${usuario.tipoUsuario}"></c:out>' ></td>
        </tr>
        <tr>
            <td><label>Clave</label></td>
            <td><input type="text" name="clave" value='<c:out value="${usuario.claveUsuario }"></c:out>' ></td>
        </tr>

    </table>

    <input type="submit" name="registrar" value="Guardar">
</form>


</body>
</html>
<%@include file="/includes/pie.jsp" %>