<%@ page import="com.migas.Model.Beans.usuario" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>


<!DOCTYPE html>
<html>
<head>
    <title>Menu</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <link rel="stylesheet" href="../../css/estiloBase.css">
</head>


<body>
<div class="Contenedor">
    <div class="Contenedor30">
        <nav>
            <ul>
                <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
                <nav>
                    <ul>
                        <li class="nav-item"><a href="inicioCaja.jsp">Iniciar Caja</a></li>
                        <li class="nav-item"><a href="RegistroVenta.jsp">Venta</a></li>
                        <li class="nav-item"><a href="listaVentaCajero.jsp">Reporte ventas</a></li>
                        <li class="nav-item"><a href="cierreCaja.jsp">Cierre Caja</a></li>
                    </ul>

                </nav>
            </ul>
        </nav>
    </div>


    <div class="Contenedor70">

        <h3 class="titulo70"> Bienvenid@  a MIGAS <br> Sr(a).<%= usuario.getNombre()%> <%= usuario.getApellido()%>  <br> como CAJERO</h3>

        <h3 class="titulo70"></h3>


    </div>
</div>

</body>
</html>

<%@include file="../../includes/pie.jsp" %>