%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="com.migas.Model.Beans.Arqueo" %>
<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <% usuario User = (usuario) request.getAttribute("Usuario"); %>
    <h3 class="tituloRoll"> CAJERO: <br> <%/*User.getUsuario()*/%></h3>
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


    <div class="container-sm">
        <br>
        <h2 class="tituloContenido">Apertura de caja:</h2><br>
        <% Arqueo arqueo = (Arqueo) request.getAttribute("Arqueo"); %>

        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=guardar"
              method="POST">
            <br>
            <div class="row justify-content-around">
                <div class="col-lg-6"><label class="inputtext">Arqueo Numero: </label>
                    <input class="" type="number" value="<%=arqueo.getNumeroArqueo()%>"/>
                </div>
                <br>
                <br>

                <div class=""><label class="inputtext" for="fechaApertura">Fecha de apertura:</label>
                    <input
                            class="form-control"
                            name="fechaApertura"
                            id="fechaApertura"
                            type="date"
                            value="<%= fecha.format(new java.util.Date())%>"
                            placeholder="dd/mm/aaaa" required
                            pattern="[A-Za-z]{2,40}"/></div>
                <br>
                <div class=""><label class="hidden" for="fechaCierre">Fecha de apertura:</label>
                    <input
                            class="form-control"
                            name="fechaCierre"
                            id="fechaCierre"
                            type="date"
                            value="<%= fecha.format(new java.util.Date())%>"
                            placeholder="dd/mm/aaaa" required
                            pattern="[A-Za-z]{2,40}"/></div>
                <br>

                <div class=""><label class="inputtext" for="montoInical">Cantidad de dinero inicial:</label>
                    <input
                            class="form-control"
                            name="montoInical"
                            id="montoInical"
                            type="number"
                            placeholder="$$$$$$$$$$$" required
                            pattern="{2,40}"/></div>
                <br>
                <br>
                <div class=""><label class="inputtext" for="montoFinal">Cantidad de dinero final:</label>
                    <input
                            class="form-control"
                            name="montoFinal"
                            id="montoFinal"
                            type="number"
                            placeholder="$$$$$$$$$$$" required
                            pattern="{2,40}"/></div>

                <div class=""><label class="hidden" for="ventasCajero">Ventas:</label>
                    <input
                            class="form-control"
                            name="ventasCajero"
                            id="ventasCajero"
                            type="number"
                            placeholder="$$$$$$$$$$$" required
                            pattern="{2,40}"/></div>
                <input class="btn btn-primary boton" type="submit" value="Abrir Caja"/>

            </div>
        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>