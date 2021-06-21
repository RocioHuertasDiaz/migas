<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@include file="../../includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/estiloBase.css">
<!DOCTYPE html>
<html>
<head>
    <title>VENTAS</title>

</head>
<body>
<div class="Contenedor">
    <div class="Contenedor30">
        <nav>
            <ul>
                <li><a href="../Usuario/inicioS.jsp">Inicio</a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
                <nav>
                    <ul>
                        <li class="nav-item"><a href="listaVenta.jsp">Reporte de ventas</a></li>
                        <li class="nav-item"><a href="RegistroCli.jsp">Registro de clientes</a></li>
                        <li class="nav-item"><a href="listaCli.jsp">Lista de Clientes</a></li>
                    </ul>

                </nav>
            </ul>
        </nav>
    </div>
    <div class="Contenedor70">
        <h3 class="titulo70"> Bienvenid@ al sistema de Ventas </h3>
        <h3 class="titulo70"><%= usuario.getTipoUsuario1()%>: <%= usuario.getNombre1()%>
        </h3>

    </div>
</div>


</body>
</html>

<%@include file="../../includes/pie.jsp" %>