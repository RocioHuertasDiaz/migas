<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Beans.Proveedor" %>
<%@ page import="com.migas.Model.Dao.ConsultasProveedor" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">


<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>

        <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>
        <li><a href="../Compras/AreaCompras.jsp">COMPRAS</a></li>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Inventario de Insumos</a></li>
            <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumo</a></li>
            <li class="nav-item"><a href="../Compras/RegistroPedidoInsumo.jsp">Registro pedido Insumo</a></li>
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
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Proveedor Registrados:</h2><br><br>
        <a class="btn" href="RegistroProveedor.jsp">Registro Nuevo proveedor</a>

        <br>
        <br>

        <table class="tabla">
            <thead>
            <tr>
                <th>NIT PROVEEDOR</th>
                <th>RAZON SOCIAL</th>
                <th>NOMBRE CONTACTO</th>
                <th>CORREO PROVEEDOR</th>
                <th>DIRECCION PROVEEDOR</th>
                <th>TELEFONO PROVEEDOR</th>
                <th></th>

            </tr>
            </thead>
            <%
                ConsultasProveedor dao = new ConsultasProveedor();
                List<Proveedor> list = dao.listar();
                Iterator<Proveedor> iter = list.iterator();
                Proveedor proveedor = null;
                while (iter.hasNext()) {
                    proveedor = iter.next();
            %>
            <tr>
                <td><%=proveedor.getNitProveedor()%>
                </td>
                <td><%=proveedor.getRazonSocialProveedor()%>
                </td>
                <td><%=proveedor.getNombreContactoProveedor()%>
                </td>
                <td><%=proveedor.getEmailProveedor()%>
                </td>
                <td><%=proveedor.getDireccionProveedor()%>
                </td>
                <td><%=proveedor.getTelefonoProveedor()%>
                </td>
                <td>
                    <a href="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=ObtenerNit&nitProveedor=<%=proveedor.getNitProveedor()%>">
                        <i class="far fa-edit" style="color: darkolivegreen;"></i></a>
                </td>

            </tr>
            <%}%>
        </table>

    </div>
</div>

<%@include file="/includes/pie.jsp" %>