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
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>

        <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>
        <li><a href="../Compras/AreaCompras.jsp">COMPRAS</a></li>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Inventario de Insumos</a></li>
            <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumo</a></li>
            <li class="nav-item"><a href="../Compras/RegistroPedidoInsumo.jsp">Registro pedido</a></li>
            <li class="nav-item"><a href="../Compras/listaPedidoInsumo.jsp">Listado de pedidos</a></li>
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
    <div class="container-sm"><br>
        <h2 class="tituloContenido">Registro de Insumo:</h2><br>
        <form class="Formulario"
              action="http://localhost:8080/migas_war_exploded/ServletInsumo?opcion=guardar"
              method="POST">
            <div class="row justify-content-around">
                <div class="col-6"><label class="inputtext">Id Insumo: </label>
                    <input
                            class="form-control"
                            type="number"
                            name="idInsumo"
                            pattern="{25}"/></div>
                <div class="col-6"><label class="inputtext" for="nombreInsumo">Nombre del Insumo:</label>
                    <input
                            class="form-control"
                            name="nombreInsumo"
                            id="nombreInsumo"
                            type="text"
                            placeholder="Nombre del Producto"
                            required/></div>

                <div class="col-6"><label class="inputtext">Cantidad (kg): </label>
                    <input
                            class="form-control"
                            type="number"
                            name="cantidadInsumo"
                            placeholder="123456789"
                            pattern="{1,50000000}" required/>
                </div>
                <div class="col-6"><label class="inputtext" for="Proveedor">Proveedor:</label>
                    <input
                            class="form-control"
                            name="Proveedor"
                            id="Proveedor"
                            type="text"
                            placeholder="Nombre del Proveedor"
                            required/></div>

                <div class="col-6"><label class="inputtext" for="fechaIngreso">Fecha Ingreso:</label>
                    <input
                            class="form-control"
                            name="fechaIngreso"
                            id="fechaIngreso"
                            type="date"
                            value="<%= fecha.format(new java.util.Date())%>"
                            required/></div>
                <div class="col-6"><label class="inputtext" for="fechaVencimiento">Fecha Vencimiento:</label>
                    <input
                            class="form-control"
                            name="fechaVencimiento"
                            id="fechaVencimiento"
                            type="date"
                            value="<%= fecha.format(new java.util.Date())%>"
                            required/>
                </div>
                <div class="col-6"><label class="inputtext" for="LoteInsumo">lote del Producto:</label>
                    <input
                            class="form-control"
                            name="LoteInsumo"
                            id="LoteInsumo"
                            type="text"
                            placeholder="Lote del Producto"
                            required/>
                </div>
                <br>
                <div class="col-6"><label class="inputtext">Precio Unitario: </label>
                    <input
                            class="form-control"
                            type="number"
                            name="precioUnitario"
                            placeholder="$123456"
                            required pattern="{30}"/>
                </div>
                <div class="col-6"><label class="inputtext">Documento Proveedor: </label>
                    <input
                            class="form-control"
                            type="text"
                            name="documentoProveedor"
                            placeholder="AAS546"
                            required pattern="{}"/>
                </div>


                <div class="col-6">
                    <br>
                    <input class="btn btn-primary boton" type="submit" value="Registrar Insumo"/>
                </div>
            </div>

        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>