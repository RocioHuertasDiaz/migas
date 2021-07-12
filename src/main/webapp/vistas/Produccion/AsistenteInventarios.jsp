<%@ page import="com.migas.Model.Beans.usuario" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>


<!DOCTYPE html>
<html>
<head>
  <title>Menu</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
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
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">PRODUCTO TERMINADO </a></li>
        <nav>
          <ul>
            <li class="nav-item"><a href="">Registro Producto</a></li>
            <li class="nav-item"><a href="">Registro Devolucion Producto</a></li>
            <li class="nav-item"><a href="">Consulta Inventario de producto</a></li>
          </ul>

          <ul>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
            <li class="nav-item"><a href="">Registro ingreso Insumo</a></li>
            <li class="nav-item"><a href="">Registro devoluciones a proveedor</a></li>
            <li class="nav-item"><a href="">Registro solicitud interna de Insumo</a></li>
            <li class="nav-item"><a href="">Registrar Egreso Insumos</a></li>
            <li class="nav-item"><a href="">Consulta Inventario de Insumo</a></li>
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