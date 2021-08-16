<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>

        <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
        <li><a href="../Compras/AreaCompras.jsp">COMPRAS</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
            <ul>
                <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Inventario de Insumos</a></li>
                <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumos</a></li>
                <li class="nav-item"><a href="">Registro devoluciones a proveedor</a></li>
            </ul>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">PROVEEDORES</a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaProveedor.jsp">Lista Proveedores</a></li>
            <li class="nav-item"><a href="../Compras/RegistroProveedor.jsp">Registro proveedores</a></li>
        </ul>
    </nav>
</div>

<div class="contenido">
    <% usuario Usuario = (usuario) request.getAttribute("Usuario"); %>

    <h3 class="tituloContenido"> Bienvenid@ al sistema de compras de MIGAS <br> <!--AQUI VA EL NOMBRE--> <br>
        <br> ASISTENTE DE COMPRAS</h3>

    <h3 class="tituloContenido"></h3>

</div>

</html>

<%@include file="../../includes/pie.jsp" %>