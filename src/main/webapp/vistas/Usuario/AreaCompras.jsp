<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../../includes/encabezado.jsp" %>
<%@ page import="com.migas.Model.Beans.usuario" %>

<!DOCTYPE html>
<link rel="stylesheet" href="../../css/estiloBase.css">

<html>
<head>

    <title>Compras</title>
</head>
<body>

<div class="Contenedor">
    <div class="Contenedor30">
        <nav>
            <ul>
                <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">COMPRAS</a></li>
                <nav>
                    <ul>
                        <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Insumos</a></li>
                        <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumos</a></li>
                        <li class="nav-item"><a href="../Compras/listaProv.jsp">Proveedores</a></li>
                        <li class="nav-item"><a href="../Compras/RegistroProv.jsp">Registro proveedores</a></li>


                    </ul>

                </nav>
            </ul>
        </nav>
    </div>
    <div class="Contenedor70">
        <h3 class="titulo70"> Bienvenid@ al sistema de Compras </h3>
        <h3 class="titulo70"><%= usuario.getTipoUsuario1()%>: <%= usuario.getNombre1()%>
        </h3>

    </div>
</div>

</body>
</html>
<%@include file="../../includes/pie.jsp" %>