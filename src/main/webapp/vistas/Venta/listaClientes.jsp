<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultasCliente" %>
<%@ page import="com.migas.Model.Beans.Cliente" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>
        <ul>
            <li><a href="../Usuario/inicioS.jsp">Inicio</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="listaVenta.jsp">Reporte de ventas</a></li>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Registro de Cotizaciones</a></li>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Lista de Cotizaciones</a></li>
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
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Clientes Registrados:</h2><br><br>
        <input class="btn btn-primary boton" href="RegistroCliente.jsp" type="submit" value="Registrar Nuevo Cliente"/>
        <br>
        <br>

        <table class="tabla">
            <thead>
            <tr>
                <th>NIT Proveedor</th>
                <th>Razón Social</th>
                <th>Nombre Contacto</th>
                <th>Dirección</th>
                <th>Correo</th>
                <th>Teléfono</th>
                <th>Tipo de Cliente</th>
                <th></th>

            </tr>
            </thead>
            <%
                ConsultasCliente dao = new ConsultasCliente();
                List<Cliente> list = dao.listar();
                Iterator<Cliente> iter = list.iterator();
                Cliente cliente = null;
                while (iter.hasNext()) {
                    cliente = iter.next();
            %>
            <tr>
                <td><%= cliente.getNitCliente() %>
                </td>
                <td><%= cliente.getNombreCliente() %>
                </td>
                <td><%= cliente.getNombreContacCliente() %>
                </td>
                <td><%= cliente.getDireccionCliente() %>
                </td>
                <td><%= cliente.getEmailCliente() %>
                </td>
                <td><%= cliente.getTelefonoCliente() %>
                </td>
                <td><%= cliente.getTipoCliente() %>
                </td>

                <td><a href="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=ObtenerNit&nitCliente=<%=cliente.getNitCliente()%>">
                    <i class="far fa-edit" style="color: darkolivegreen;"></i>
                </a>
                </td>
            </tr>
            <%}%>
        </table>
    </div>
</div>
</html>
<%@include file="/includes/pie.jsp" %>