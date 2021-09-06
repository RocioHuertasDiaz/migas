<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.migas.Model.Beans.pedidoProducto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE VENTAS <br></h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">Inicio</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="listaVenta.jsp">Reporte de ventas</a></li>
                    <li class="nav-item"><a href="RegistroPedidoProducto.jsp">Registro de Pedidos</a></li>
                    <li class="nav-item"><a href="listaPedidoProducto.jsp">Listado de Pedidos</a></li>
                </ul>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">CLIENTES</a></li>
                <ul>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Registro de clientes</a></li>
                    <li class="nav-item"><a href="listaClientes.jsp">Lista de Clientes</a></li>
                </ul>

            </nav>
        </ul>
    </nav>
</div>

<div class="contenido">
    <div class="container-sm"><br>
        <h2 class="tituloContenido">Actualización de Pedido Producto:</h2><br>
        <%pedidoProducto pedido = (pedidoProducto) request.getAttribute("Producto"); %>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletPedidoProducto?opcion=editar"
              method="POST">
            <input type="text" name="idProducto" value="<%=pedido.getIdPedidoProducto()%>">
            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext">pedido Productos: </label>
                    <input
                            class="hidden"
                            type="number"
                            name="idPedido"/></div>

                <div class="col-6"><label class="inputtext" for="fechaPedido">Fecha de Pedido:</label>
                    <input
                            class="form-control"
                            name="fechaPedido"
                            id="fechaPedido"
                            type="text"
                            value="<%=pedido.getFechaPedido()%>"
                            required/></div>

                <div class="col-6"><label class="inputtext" for="fechaEntrega">Fecha de Pedido:</label>
                    <input
                            class="form-control"
                            name="fechaEntrega"
                            id="fechaEntrega"
                            type="text"
                            value="<%=pedido.getFechaEntrega()%>"
                            required/></div>

                <div class="col-6"><label class="inputtext" for="idProducto">Proveedor:</label>
                    <input
                            class="form-control"
                            name="idProducto"
                            id="idProducto"
                            type="text"
                            value="<%=pedido.getIdProducto()%>"
                            required/></div>

                <div class="col-6"><label class="inputtext">Cantidad (kg): </label>
                    <input
                            class="form-control"
                            type="number"
                            name="cantidadInsumo"
                            value="<%=pedido.getCantidadProducto()%>"
                            pattern="{1,50000000}" required/>
                </div>

                <div class="col-6"><label class="inputtext" for="NITCliente">Proveedor:</label>
                    <input
                            class="form-control"
                            name="NITCliente"
                            id="NITCliente"
                            type="text"
                            value="<%=pedido.getNITCliente()%>"
                            required/></div>

                <div class="col-6">
                    <br>
                    <input class="btn btn-primary boton" type="submit" value="Actualizar Pedido Producto"/>
                </div>
            </div>

        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>