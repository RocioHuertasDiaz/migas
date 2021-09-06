<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaProducto" %>
<%@ page import="com.migas.Model.Beans.Producto" %>
<%@ page import="com.migas.Model.Dao.ConsultaVenta" %>
<%@ page import="com.migas.Model.Beans.Venta" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>


<div class="menu">
    <h3 class="tituloRoll"> Analista de Inventarios:
    </h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">Inicio</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="listaVenta.jsp">Reporte de ventas</a></li>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Registro de clientes</a></li>
                    <li class="nav-item"><a href="listaClientes.jsp">Lista de Clientes</a></li>
                </ul>

            </nav>
        </ul>
    </nav>
</div>

<div class="contenido">
    <div class="container-md">
        <h2 class="tituloContenido">Ventas:</h2><br><br>

        <input class="btn btn-primary boton" href="RegistroVenta.jsp" type="submit" value="Registro Nueva Venta"/>
        <br><br>
        <table>
            <thead>
            <tr>
                <th>Fecha Factura</th>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Precio Unitario</th>
                <th>Lote Producto</th>
                <th>Fecha de vencimiento</th>
                <th>Descuento</th>
                <th>Total</th>
                <th>Nit Cliente</th>

                <th class="thtabla">Edición</th>
                <th class="thtabla">Eliminación</th>
            </tr>
            </thead>
            <%
                ConsultaVenta dao = new ConsultaVenta();
                List<Venta> list = dao.listar();
                Iterator<Venta> iter = list.iterator();
                Venta venta = null;
                while (iter.hasNext()) {
                    venta = iter.next();
            %>
            <tr>
                <td class="tdtabla"><%= venta.getIdFacturaV() %>
                </td>
                <td class="tdtabla"><%= venta.getFechaFactura() %>
                </td>
                <td class="tdtabla"><%= venta.getIdProducto() %>
                </td>
                <td class="tdtabla"><%= venta.getCantidad() %>
                </td>
                <td class="tdtabla"><%= venta.getPrecioUnitario() %>
                </td>
                <td class="tdtabla"><%= venta.getLoteProducto() %>
                </td>
                <td class="tdtabla"><%= venta.getFechaVencimiento() %>
                </td>
                <td class="tdtabla"><%= venta.getDescuento() %>
                </td>
                <td class="tdtabla"><%= venta.getTotalVenta() %>
                </td>
                <td class="tdtabla"><%= venta.getNitCliente() %>
                </td>

                <td class="tdtabla"><a class="nav-link"
                                       href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=obtenerId=<%= venta.getIdFacturaV() %>">Editar</a>
                </td>
                <td class="tdtabla"><a class="nav-link"
                                       href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=Eliminar=<%= venta.getIdFacturaV() %>">Eliminar</a>
                </td>
            </tr>
            <%}%>

        </table>
        <br>
        <br>
        <br>
        <br>

    </div>
</div>
</html>
<%@include file="/includes/pie.jsp" %>