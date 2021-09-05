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
              action="http://localhost:8080/migas_war_exploded/ServletVenta?opcion=guardar"
              method="POST">
            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext">Número Factura: </label>
                    <input class="form-control"
                           type="number"
                           name="idFacturaV"
                           placeholder="Id"
                           pattern="{30}"/></div>

                <br>

                <div class="col-6"><label>Fecha Factura: </label>
                    <input class="form-control"
                           type="date"
                           value="<%=fecha.format(new java.util.Date())%>"
                           name="fechaFactura"
                           required/></div>
                <br>

                <div class="col-6"><label>Nit Cliente: </label>
                    <input class="form-control" type="number"
                           name="NitCliente" placeholder="Nit"
                           pattern="{25}"/></div>
                <br>
                <br>
                <div class="col-6"><label>Id Producto: </label>
                    <input class="form-control" type="text"
                           name="baseDatosProducto[]"
                           /></div>

                <div class="col-6">
                    <a class="btn btn-primary boton" type="submit"
                          href="RegistroProducto.jsp">Registro venta de productos</a>

                </div>
                <br>
                <br>
                <div class="col-6"><label>Total Venta: </label>
                    <input class="form-control" type="number"
                           name="totalVenta" placeholder="$123456"
                           required pattern="{30}"/></div>
                <br>
                <div class="col-6"><label>Numero de Arqueo </label>
                    <input class="form-control" type="number"
                           name="numeroArqueo" placeholder="1"
                           required pattern="{30}"/></div>
                <br>
                <br>
                <div class="col-6">
                    <br>
                    <input class="btn btn-primary boton" type="submit" value="Registrar Venta"/>
                </div>
            </div>
        </form>
    </div>
</div>

</html>

<%@include file="../../includes/pie.jsp" %>