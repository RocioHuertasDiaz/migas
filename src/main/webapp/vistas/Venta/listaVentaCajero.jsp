<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Dao.ConsultaVentaCajero" %>
<%@ page import="com.migas.Model.Beans.Arqueo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Menu</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <link rel="stylesheet" href="../../css/estiloBase.css">
</head>
<body>
<div class="Contenedor">
    <div class="Contenedor30">
        <h4 class="tituloRoll"> CAJERO: <br> <%= usuario.getNombre()%> <%= usuario.getApellido()%></h4>
        <nav>
            <ul>
                <li><a href="../Usuario/inicioS.jsp">Inicio</a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
                <nav>
                    <ul>
                        <li class="nav-item"><a href="../Venta/inicioCaja.jsp">Iniciar Caja</a></li>
                        <li class="nav-item"><a href="../Venta/RegistroVenta.jsp">Venta</a></li>
                        <li class="nav-item"><a href="../Venta/listaVentaCajero.jsp">Reporte ventas</a></li>
                        <li class="nav-item"><a href="../Venta/cierreCaja.jsp">Cierre Caja</a></li>
                    </ul>

                </nav>
            </ul>
        </nav>
    </div>

    <div class="Contenedor70">
        <div class="login-box">
            <h3>LISTA DE VENTAS</h3>
            <table class="tabla">
                <thead>
                <tr>
                    <th class="thtabla">Numero Arqueo</th>
                    <th class="thtabla">Fecha de apertura</th>
                    <th class="thtabla">Fecha de cierre</th>
                    <th class="thtabla">Monto inicial</th>
                    <th class="thtabla">Total Ventas</th>
                    <th class="thtabla">Monto final</th>
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
                    <td class="tdtabla"><%= Arqueo.getNumeroArqueo() %>
                    </td>
                    <td class="tdtabla"><%= Arqueo.getFechaApertura() %>
                    </td>
                    <td class="tdtabla"><%= arqueo.getFechaCierre() %>
                    </td>
                    <td class="tdtabla"><%= arqueo.getMontoInical() %>
                    </td>
                    <td class="tdtabla"><%= arqueo.getVentasCajero() %>
                    </td>
                    <td class="tdtabla"><%= arqueo.getMontoFinal() %>
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
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>