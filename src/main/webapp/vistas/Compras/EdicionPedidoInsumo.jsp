<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Beans.Insumo" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.migas.Model.Beans.pedidoInsumo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>

        <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>
        <li><a href="../Compras/AreaCompras.jsp">COMPRAS</a></li>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Inventario de Insumos</a></li>
            <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumo</a></li>
            <li class="nav-item"><a href="../Compras/RegistroPedidoInsumo.jsp">Registro pedido</a></li>
            <li class="nav-item"><a href="../Compras/listaPedidoInsumo.jsp">Listado de pedidos</a></li>
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
    <div class="container-sm"><br>
        <h2 class="tituloContenido">Actualización de Insumo:</h2><br>
        <%pedidoInsumo pedido = (pedidoInsumo) request.getAttribute("pedido"); %>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletInsumo?opcion=editar"
              method="POST">
            <input type="text" name="idInsumo" value="<%=pedido.getIdPedidoInsumo()%>">
            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext">pedido Insumo: </label>
                    <input
                            class="hidden"
                            type="number"
                            name="idPedidoidInsumo"/></div>

                <div class="col-6"><label class="inputtext" for="fechaPedido">Fecha de Pedido:</label>
                    <input
                            class="form-control"
                            name="fechaPedido"
                            id="fechaPedido"
                            type="text"
                            value="<%=pedido.getFechapedido()%>"
                            required/></div>

                <div class="col-6"><label class="inputtext" for="fechaEntrega">Fecha de Pedido:</label>
                    <input
                            class="form-control"
                            name="fechaEntrega"
                            id="fechaEntrega"
                            type="text"
                            value="<%=pedido.getFechaEntrega()%>"
                            required/></div>

                <div class="col-6"><label class="inputtext">Cantidad (kg): </label>
                    <input
                            class="form-control"
                            type="number"
                            name="cantidadInsumo"
                            value="<%=pedido.getCantidadInsumo()%>"
                            pattern="{1,50000000}" required/>
                </div>
                <div class="col-6"><label class="inputtext" for="idInsumo">Proveedor:</label>
                    <input
                            class="form-control"
                            name="idInsumo"
                            id="idInsumo"
                            type="text"
                            value="<%=pedido.getIdInsumo()%>"
                            required/></div>

                <div class="col-6"><label class="inputtext" for="NITProveedor">Proveedor:</label>
                    <input
                            class="form-control"
                            name="NITProveedor"
                            id="NITProveedor"
                            type="text"
                            value="<%=pedido.getNITProveedor()%>"
                            required/></div>

                <div class="col-6">
                    <br>
                    <input class="btn btn-primary boton" type="submit" value="Actualizar Insumo"/>
                </div>
            </div>

        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>