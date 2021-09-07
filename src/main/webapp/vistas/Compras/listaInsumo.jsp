<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaInsumo" %>
<%@ page import="com.migas.Model.Beans.Insumo" %>
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
            <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro ingreso Insumo</a></li>
            <li class="nav-item"><a href="../Compras/RegistroPedidoInsumo.jsp">Registro pedido Insumo</a></li>
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
        <a class="btn" href="RegistroInsumo.jsp">Registro Nuevo Insumo</a>
        <br>
        <br>

        <table>
            <thead>
            <tr>
                <th>Id Insumo</th>
                <th>Nombre Insumo</th>
                <th>Cantidad</th>
                <th>Fecha Ingreso</th>
                <th>Fecha Vencimiento</th>
                <th>Nombre Proveedor</th>
                <th>Lote del Insumo</th>
                <th>Precio Unitario</th>
                <th>Factura o Remisión Proveedor</th>
                <th></th>
            </tr>
            </thead>
            <%
                ConsultaInsumo dao = new ConsultaInsumo();
                List<Insumo> list = dao.listar();
                Iterator<Insumo> iter = list.iterator();
                Insumo insumo = null;
                while (iter.hasNext()) {
                    insumo = iter.next();
            %>
            <tr>
                <td><%=insumo.getIdInsumo()%>
                </td>
                <td><%=insumo.getNombreInsumo()%>
                </td>
                <td><%=insumo.getCantidadInsumo()%>
                </td>
                <td><%=insumo.getProveedor()%>
                </td>
                <td><%=insumo.getFechaIngreso()%>
                </td>
                <td><%=insumo.getFechaVencimiento()%>
                </td>
                <td><%=insumo.getLoteInsumo()%>
                </td>
                <td><%=insumo.getPrecioUnitario()%>
                </td>
                <td><%=insumo.getDocumentoProveedor()%>
                </td>
                <td>
                    <a href="http://localhost:8080/migas_war_exploded/ServletInsumo?opcion=ObtenerId&idInsumo=<%=insumo.getIdInsumo()%>">
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