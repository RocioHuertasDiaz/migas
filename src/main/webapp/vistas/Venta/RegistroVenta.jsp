<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Venta Activa</title>
    <link rel="stylesheet" href="../../../css/estiloBase.css">

</head>
<body>
<div class="Contenedor">
    <div class="Contenedor">
        <div class="Contenedor30">
            <nav>
                <ul>
                    <li><a href="../Usuario/inicioS.jsp">Inicio</a></li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
                                                     href="../../vistas/Venta/RegistroVenta.jsp">VENTAS</a></li>
                    <nav>
                        <ul>
                            <li class="nav-item"><a href="../Venta/inicioCaja.jsp">Iniciar Caja</a></li>
                            <li class="nav-item"><a href="../Venta/RegistroVenta.jsp">Venta</a></li>
                            <li class="nav-item"><a href="../Venta/listaVenta.jsp">Reporte ventas</a></li>
                            <li class="nav-item"><a href="../Venta/cierreCaja.jsp">Cierre Caja</a></li>
                        </ul>

                    </nav>
                </ul>
            </nav>
        </div>

    <div class="Contenedor70">
        <h1>Registro de Venta</h1>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=guardar"
              method="POST">

            <h5><label class="col-form-label">Número Factura: </label><br> <input type="number" name="idFacturaV"
                                                                                  placeholder="Id" pattern="{25}"
                                                                                  autofocus/></h5>
            <h5><label>Fecha Factura: </label><br> <input type="date" name="fechaFactura" required/></h5>
            <h5><label>Id Producto: </label><br> <input type="number" name="idProducto" placeholder="Id"
                                                        pattern="{25}"/></h5>
            <h5><label>Cantidad: </label><br> <input type="number" name="cantidadProducto" placeholder="Cantidad"
                                                     required pattern="{1,50000000}"/></h5>
            <h5><label>Precio Unitario: </label><br> <input type="number" name="precioUnitario" placeholder="$123456"
                                                            required pattern="{30}"/></h5>
            <h5><label>Lote Producto: </label><br> <input type="text" name="loteProducto" placeholder="ABC12345"
                                                          required/></h5>
            <h5><label>Fecha de Vencimiento: </label><br> <input type="date" name="fechaVencimiento" required/></h5>
            <h5><label>Descuento: </label><br> <input type="number" name="Descuento" placeholder="$123456" required
                                                      pattern="{30}"/></h5>
            <h5><label>Total Venta: </label><br> <input type="number" name="totalVenta" placeholder="$123456" required
                                                        pattern="{30}"/></h5>
            <h5><label>Nit Cliente: </label><br> <input type="number" name="idProducto" placeholder="Id"
                                                        pattern="{25}"/></h5>


            <br><br>
            <br> <input class="nav-link" type="submit" value="Registrar Producto"/>
            <br><br>
            <br> <input class="nav-link" type="submit" value="Listar"/>
        </form>
    </div>
    <div class="Contenedorimg">
        <img class="estiloimg" src="" alt="Logo Migas">
    </div>
</div>


</body>
</html>


<%@include file="/includes/pie.jsp" %>