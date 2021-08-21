<%@ page import="com.migas.Model.Beans.usuario" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>
<div class="menu">
    <nav>
        <ul>
            <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="iniciarCaja.jsp">Iniciar Caja</a></li>
                    <li class="nav-item"><a href="RegistroVenta.jsp">Venta</a></li>
                    <li class="nav-item"><a href="listaVentaCajero.jsp">Reporte ventas</a></li>
                    <li class="nav-item"><a href="cierreCaja.jsp">Cierre Caja</a></li>
                </ul>

            </nav>
        </ul>
    </nav>
</div>
<div class="contenido">
    <% usuario Usuario = (usuario) request.getAttribute("Usuario"); %>

    <h3 class="tituloContenido"> Bienvenid@ a MIGAS <br> <!--AQUI VA EL NOMBRE--> <br>
        <br> CAJERO</h3>

    <h3 class="tituloContenido"></h3>

</div>


<%@include file="../../includes/pie.jsp" %>