<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>

<div class="menu">

    <h3 class="tituloRoll"> CAJERO:</h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">Inicio</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="../Venta/iniciarCaja.jsp">Iniciar Caja</a></li>
                    <li class="nav-item"><a href="../Venta/RegistroVenta.jsp">Venta</a></li>
                    <li class="nav-item"><a href="../Venta/listaVentaCajero.jsp">Reporte ventas</a></li>
                    <li class="nav-item"><a href="../Venta/cierreCaja.jsp">Cierre Caja</a></li>
                </ul>

            </nav>
        </ul>
    </nav>
</div>

<div class="contenido">
    <div class="container-sm"><br>
        <h2 class="tituloContenido">Registro de Venta:</h2><br>
        <form class="Formulario"
              action="http://localhost:8080/migas_war_exploded/ServletVentaCajero?opcion=guardar"
              method="POST">
            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext">Número Factura: </label>
                    <input class="form-control"
                           type="number"
                           name="idFacturaV"
                           placeholder="Id"
                           pattern="{30}"/></div>

                <div class="col-6"><label>Fecha Factura: </label>
                    <input class="form-control"
                           type="date"
                           name="fechaFactura"
                           required/></div>

                <div class="col-6"><label>Id Producto: </label>
                    <input class="form-control" type="number"
                           name="idProducto" placeholder="Id"
                           pattern="{30}"/></div>

                <div class="col-6"><label>Cantidad: </label>
                    <input class="form-control" type="number"
                           name="cantidadProducto" placeholder="123"
                           required pattern="{1,50000000}"/></div>

                <div class="col-6"><label>Precio Unitario: </label>
                    <input class="form-control" type="number"
                           name="precioUnitario" placeholder="$123456"
                           required pattern="{30}"/></div>

                <div class="col-6"><label>Lote Producto: </label>
                    <input class="form-control" type="text"
                           name="Descuento" placeholder="$123456" required
                           pattern="{30}"/></div>

                <div class="col-6"><label>Fecha de vencimiento: </label>
                    <input class="form-control" type="Date"
                           name="Descuento"
                           value="<%=fecha.format(new java.util.Date())%>"
                           required pattern="{30}"/></div>

                <div class="col-6"><label>Descuento: </label>
                    <input class="form-control" type="number"
                           name="Descuento" placeholder="$123456" required
                           pattern="{30}"/></div>

                <div class="col-6"><label>Total Venta: </label>
                    <input class="form-control" type="number"
                           name="totalVenta" placeholder="$123456"
                           required pattern="{30}"/></div>

                <div class="col-6"><label>Nit Cliente: </label>
                    <input class="form-control" type="number"
                           name="idProducto" placeholder="Id"
                           pattern="{25}"/></div>
                <div>
                    <br>
                    <input class="nav-link" type="submit" value="Registrar Venta"/>
                    <input class="nav-link" type="submit" value="Listar"/>
                </div>
            </div>
        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>