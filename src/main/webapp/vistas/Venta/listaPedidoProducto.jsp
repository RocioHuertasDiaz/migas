<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaPedidoProducto" %>
<%@ page import="com.migas.Model.Beans.pedidoProducto" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
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
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Inventario de Insumo o Materia Prima:</h2><br><br>
        <a class="btn" href="RegistroPedidoProducto.jsp">Registro Nuevo Pedido</a>
        <br>
        <br>

        <table>
            <thead>
            <tr>
                <th>Id Pedido</th>
                <th>Fecha Pedido</th>
                <th>Fecha Entrega</th>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>NIT Cliente</th>
                <th></th>
            </tr>
            </thead>
            <%
                ConsultaPedidoProducto dao = new ConsultaPedidoProducto();
                List<pedidoProducto> list = dao.listar();
                Iterator<pedidoProducto> iter = list.iterator();
                pedidoProducto pedido = null;
                while (iter.hasNext()) {
                    pedido = iter.next();
            %>
            <tr>
                <td><%=pedido.getIdPedidoProducto()%>
                </td>

                <td><%=pedido.getFechaPedido()%>
                </td>
                <td><%=pedido.getFechaEntrega()%>
                </td>
                <td><%=pedido.getIdProducto()%>
                </td>
                <td><%=pedido.getCantidadProducto()%>
                </td>
                <td><%=pedido.getNITCliente()%>
                </td>
                <td>
                    <a href="http://localhost:8080/migas_war_exploded/ServletPedidoProducto?opcion=ObtenerId&idPedidoProducto=<%=pedido.getIdPedidoProducto()%>">
                        <i class="far fa-edit" style="color: darkolivegreen;"></i></a></td>
            </tr>
            <%}%>
        </table>

    </div>
    <br>
    <br>
</div>
</html>
<%@include file="/includes/pie.jsp" %>