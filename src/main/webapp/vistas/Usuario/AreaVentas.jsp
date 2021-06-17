<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@include file="../../includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/estiloBase.css">
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>

</head>
<body>
<h3> Bienvenid@ al sistema de Ventas  <br><%=  usuario.tipoUsuario%>: <%=  usuario.nombre%></h3>
</body>
</html>
<%@include file="../../includes/pie.jsp" %>