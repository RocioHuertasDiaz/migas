<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaInsumo" %>
<%@ page import="com.migas.Model.Beans.Insumo" %>
<%@ page import="java.util.ArrayList" %>
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
            <li class="nav-item"><a href="../Compras/InsumoConsulta.jsp">Consulta por insumo</a></li>
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
        <h2 class="tituloContenido">Consulta por Insumo:</h2><br><br>
        <br>
        <br>
        <form method="post" action="http://localhost:8080/migas_war_exploded/Insumo">
            <div>
                Id Insumo <input type="text" name="nombreInsumo">

            </div>
            <br><br>
            <button>Consultar</button>
            <input type="hidden" value="consultaInsumo" name="opcion">
        </form>
        <br>
        <br>
        <div style="color: orangered">
            <%
                if (request.getAttribute("mensajeError") != null) {
            %>
            ${mensajeError}
            <%} else {%>
            ${mensajeExito}
            <%}%>
        </div>
        <br><br>
        <form>
            <table>
                <tr>
                    <th>ID INSUMO</th>
                    <th>NOMBRE</th>
                    <th>CANTIDAD</th>
                    <th>PROVEEDOR</th>
                    <th>FECHA INGRESO</th>
                    <th>FECHA VENCIMIENTO</th>
                    <th>LOTE</th>
                    <th>PRECIO</th>
                    <th>DOCUMENTO</th>
                </tr>
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
                </tr>
                <%}%>
            </table>


        </form>


    </div>

</div>
</html>
<%@include file="/includes/pie.jsp" %>