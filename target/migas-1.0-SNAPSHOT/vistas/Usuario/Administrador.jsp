<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<h2>Bienvenid@ al sistema MIGAS</h2>

<section class="estiloSeccion">
    <div class="ContenedorForm">
        <nav>
            <tr>
                <th scope="row"><c:out value="${usuario.idUsuario}"></c:out></th>
                <td><c:out value="${usuario.idenUsuario}"></c:out></td>
                <td><c:out value="${usuario.nombreUsuario}"></c:out></td>
                <td><c:out value="${usuario.apellidoUsuario}"></c:out></td>
                <td><c:out value="${usuario.tipoUsuario}"></c:out></td>
                <td><c:out value="${usuario.claveUsuario}"></c:out></td>
            <ul>
                <li class="nav-item"><a class="nav-link active" href="Editar.jsp">Editar</a></li>
                <li class="nav-item"><a class="nav-link" href="Registro.jsp">Registrar</a></li>
            </ul>
            </tr>
        </nav>
    </div>
</section>
</body>
</html>
<%@include file="/includes/pie.jsp" %>