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
    <div class="container py-2"><br>
        <h2 class="tituloContenido">Registro de Productos:</h2><br>
        <form class="Formulario">
            <div>

                <input id="id" type="text" placeholder="id producto" class="form-control my-2">
                <input id="nombre" type="text" placeholder="nombre" class="form-control my-2">
                <input id="precio" type="text" placeholder="precio" class="form-control my-2">
                <input id="lote" type="text" placeholder="lote" class="form-control my-2">
                <input id="fechav" type="text" placeholder="fecha vencimiento" class="form-control my-2">
                <input id="descuento" type="text" placeholder="descuento" class="form-control my-2">
                <button id="boton" class="btn btn-success" type="reset" onclick="capturar();">Agregar</button>
            </div>
        </form>

        <table class="table" id="tabla">
            <thead class="thead-inverse">
            <tr>
                <th>Id Producto</th>
                <th>Nombre</th>
                <th>Precio Unitario:</th>
                <th>Lote Producto:</th>
                <th>Fecha de vencimiento:</th>
                <th>Descuento:</th>
            </tr>
            </thead>


        </table>
    </div>
    <script>
        function capturar() {
            function Producto(id, nombre, precio, lote, fechav, descuento) {
                this.id = id;
                this.nombre = nombre;
                this.precio = precio;
                this.lote = lote;
                this.fechav = fechav;
                this.descuento = descuento;
            }

            var idCapturar = document.getElementById("id").value;
            var nombreCapturar = document.getElementById("nombre").value;
            var precioCapturar = document.getElementById("precio").value;
            var loteCapturar = document.getElementById("lote").value;
            var fechavCapturar = document.getElementById("fechav").value;
            var descuentoCapturar = document.getElementById("descuento").value;

            nuevoProducto = new Producto(idCapturar, nombreCapturar, precioCapturar, loteCapturar, fechavCapturar, descuentoCapturar);
            console.log(nuevoProducto);
            agregar();
        }

        var baseDatosProducto = [];

        function agregar() {
            baseDatosProducto.push(nuevoProducto);
            console.log(baseDatosProducto);
            document.getElementById("tabla").innerHTML += '<tbody><td>' + nuevoProducto.id + '</td><td>' + nuevoProducto.nombre + '</td>' +
                '<td>' + nuevoProducto.precio + '</td><td>' + nuevoProducto.lote + '</td><td>' + nuevoProducto.fechav + '</td><td>' + nuevoProducto.descuento + '</td></tbody>';

        }
    </script>

</div>


</html>

<%@include file="../../includes/pie.jsp" %>