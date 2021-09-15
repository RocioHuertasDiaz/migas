<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaInsumo" %>
<%@ page import="com.migas.Model.Beans.Insumo" %>
<%@ page import="com.migas.Model.Dao.ConsultaPedidoInsumo" %>
<%@ page import="com.migas.Model.Beans.pedidoInsumo" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
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
            <li class="nav-item"><a href="../Compras/InsumoConsulta.jsp">Consulta</a></li>
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
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Inventario de Insumo o Materia Prima:</h2><br><br>
        <a class="btn" href="RegistroPedidoInsumo.jsp">Registro Nuevo Pedido</a>
        <br>
        <br>

        <table>
            <thead>
            <tr>
                <th>Id Pedido</th>
                <th>Fecha Pedido</th>
                <th>Fecha Entrega</th>
                <th>Cantidad</th>
                <th>Insumo</th>
                <th>NIT Proveedor</th>
                <th></th>
            </tr>
            </thead>
            <%
                ConsultaPedidoInsumo dao = new ConsultaPedidoInsumo();
                List<pedidoInsumo> list = dao.listar();
                Iterator<pedidoInsumo> iter = list.iterator();
                pedidoInsumo pedido = null;
                while (iter.hasNext()) {
                    pedido = iter.next();
            %>
            <tr>
                <td><%=pedido.getIdPedidoInsumo()%>
                </td>
                <td><%=pedido.getFechapedido()%>
                </td>
                <td><%=pedido.getFechaEntrega()%>
                </td>
                <td><%=pedido.getCantidadInsumo()%>
                </td>
                <td><%=pedido.getIdInsumo()%>
                </td>
                <td><%=pedido.getNITProveedor()%>
                </td>
                <td>
                    <a href="http://localhost:8080/migas_war_exploded/ServletPedidoInsumo?opcion=ObtenerId&idPedidoInsumo=<%=pedido.getIdPedidoInsumo()%>">
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