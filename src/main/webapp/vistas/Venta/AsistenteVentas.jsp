<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@include file="../../includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>

<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE VENTAS <br></h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">Inicio</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="listaVenta.jsp">Reporte de ventas</a></li>
                    <li class="nav-item"><a href="RegistroPedidoProducto.jsp">Registro de Pedidos</a></li>
                    <li class="nav-item"><a href="listaPedidoProducto.jsp">Listado de Pedidos</a></li>
                </ul>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">CLIENTES</a></li>
                <ul>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Registro de clientes</a></li>
                    <li class="nav-item"><a href="listaClientes.jsp">Lista de Clientes</a></li>
                </ul>

            </nav>
        </ul>
    </nav>
</div>
<div class="contenido">

    <h3 class="tituloContenido"> Bienvenid@ a MIGAS <br> <!--AQUI VA EL NOMBRE--> <br>
        <br> ASISTENTE DE VENTAS</h3>

</div>


<%@include file="../../includes/pie.jsp" %>