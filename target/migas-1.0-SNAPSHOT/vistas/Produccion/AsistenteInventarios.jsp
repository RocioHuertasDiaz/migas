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


                <li class="nav-item dropdown"><a href="Listaproducto.jsp">PRODUCTO TERMINADO </a></li>
                <li class="nav-item dropdown"><a href="../Compras/RegistroInsumo.jsp">MATERIA PRIMA E INSUMOS </a></li>

            </ul>
        </nav>
    </div>

    <div class="contenido">
        <% usuario Usuario = (usuario) request.getAttribute("Usuario"); %>

        <h3 class="tituloContenido"> Bienvenid@ a MIGAS <br> <!--AQUI VA EL NOMBRE--> <br>
            <br> ASISTENTE DE INVENTARIOS</h3>

        <h3 class="tituloContenido"></h3>

    </div>

</html>

<%@include file="../../includes/pie.jsp" %>