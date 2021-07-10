<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../../includes/encabezado.jsp" %>
<%@ page import="com.migas.Model.Beans.usuario" %>

<!DOCTYPE html>
<link rel="stylesheet" href="../../css/estiloBase.css">

<html>
<head>
    <link rel="stylesheet" href="../../css/estiloBase.css">
    <title>Area de producccion</title>
</head>
<body>

<h3> Bienvenid@ al sistema de Producción  <br><%=  usuario.tipoUsuario%>: <%=  usuario.nombre%></h3>


</body>
</html>
<%@include file="../../includes/pie.jsp" %>