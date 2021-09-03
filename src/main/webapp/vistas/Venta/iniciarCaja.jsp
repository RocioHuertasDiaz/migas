<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
    <h3 class="tituloRoll"> CAJERO <br> <%/*User.getUsuario()*/%></h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>

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

    <br>
    <h2 class="tituloContenido">Apertura de caja:</h2>
    <% Arqueo arqueo = (Arqueo) request.getAttribute("Arqueo"); %>
    <div class="login-box">
        <form class="FormularioI" action="http://localhost:8080/migas_war_exploded/ServletArqueo?opcion=guardar"
              method="POST">

            <input type="hidden" name="numeroArqueo" value="">

            <div class="form-group has-feedback"><label class="inputtext" for="fechaApertura">Fecha de apertura:</label>
                <input
                        class="form-control"
                        name="fechaApertura"
                        id="fechaApertura"
                        type="date"
                        value="<%= fecha.format(new java.util.Date())%>"
                        placeholder="dd/mm/aaaa" required
                        pattern="[A-Za-z]{2,40}"/></div>

            <input
                    class="hidden"
                    type="date"
                    name="fechaCierre"
                    id="fechaCierre"
                    value="<%= fecha.format(new java.util.Date())%>"
                    placeholder="dd/mm/aaaa" required
                    pattern="[A-Za-z]{2,40}"/>
            <br>

            <div class="form-group has-feedback"><label class="inputtext">Cantidad de dinero
                inicial:</label>
                <input
                        class="form-control"
                        name="montoInicial"
                        type="number"
                        placeholder="$100000"
                        required pattern="{30}"/></div>

                <input
                        class="hidden"
                        type="number"
                        name="montoFinal"
                        value="0"
                        pattern="{30}"/>

            <input
                    class="hidden"
                    type="number"
                    name="ventasCajero"
                    value="0"
                     pattern="{30}"/>
            <br>

            <div class="col-xs-4">
                <input type="submit" name="verificar" value="Iniciar Caja"
                       class="btn btn-primary boton"/>
            </div>
            <br><br>

        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>