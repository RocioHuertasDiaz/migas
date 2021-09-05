<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.migas.Model.Beans.Arqueo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaVentaCajero" %>
<%@ page import="java.util.Iterator" %>
<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <% usuario User = (usuario) request.getAttribute("Usuario"); %>
    <h3 class="tituloRoll"> Cajero:
    </h3>
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
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Ventas del dia:</h2><br><br>
        <a class="btn" href="RegistroVenta.jsp">Registro nuevo producto</a>
        <br>
        <br>

        <table class="tabla">
            <thead>
            <tr>
                <th class="thtabla">Numero Arqueo</th>
                <th class="thtabla">Fecha de apertura</th>
                <th class="thtabla">Fecha de cierre</th>
                <th class="thtabla">Monto inicial</th>
                <th class="thtabla">Total Ventas</th>
                <th class="thtabla">Monto final</th>
                <th></th>
            </tr>
            </thead>

            <!--crear metodo para que solo traiga las ventas del turno por cajero-->
            <%
                ConsultaVentaCajero dao = new ConsultaVentaCajero();
                List<Arqueo> list = dao.listar();
                Iterator<Arqueo> iter = list.iterator();
                Arqueo arqueo = null;
                while (iter.hasNext()) {
                    arqueo = iter.next();
            %>
            <tr>
                <td class="tdtabla"><%= arqueo.getNumeroArqueo() %>
                </td>
                <td class="tdtabla"><%= arqueo.getFechaApertura()%>
                </td>
                <td class="tdtabla"><%= arqueo.getFechaCierre() %>
                </td>
                <td class="tdtabla"><%= arqueo.getMontoInicial() %>
                </td>
                <td class="tdtabla"><%= arqueo.getVentasCajero() %>
                </td>
                <td class="tdtabla"><%= arqueo.getMontoFinal() %>
                </td>

                <td><a href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=ObtenerNit&nitCliente=<%=arqueo.getNumeroArqueo()%>">
                    <i class="far fa-print" style="color: darkolivegreen;"></i>
                </a>
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

<%@include file="/includes/pie.jsp" %>