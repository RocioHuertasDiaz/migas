<%@ page import="com.migas.Model.Beans.Proveedor" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>
<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>

        <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
        <li><a href="../Compras/AreaCompras.jsp">COMPRAS</a></li>
        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">MATERIA PRIMA E INSUMOS </a></li>
        <ul>
            <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Inventario de Insumos</a></li>
            <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumo</a></li>
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
    <div class="container-sm">
        <br>
        <h2 class="tituloContenido">Actualización de Proveedor:</h2><br>
        <%Proveedor proveedor = (Proveedor) request.getAttribute("proveedor"); %>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=editar"
              method="post">
            <input type="hidden" name="nitProveedor" value="<%=proveedor.getNitProveedor()%>">

            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext">Nombre del Proveedor: </label>
                    <input class="form-control"
                           value="<%=proveedor.getRazonSocialProveedor()%>"
                           type="text"
                           name="razonSocialProveedor"
                           required
                           pattern="[A-Za-z ]{2,40}"/></div>
                <br>
                <div class="col-6"><label class="inputtext">Nombre Contacto: </label>
                    <input class="form-control"
                           type="text"
                           name="nombreContactoProveedor"
                           value="<%=proveedor.getNombreContactoProveedor()%>"
                           required
                           pattern="[A-Za-z ]{2,40}"/></div>

                <div class="col-6"><label class="inputtext">Correo Electrónico: </label>
                    <input class="form-control"
                           type="email"
                           name="emailProveedor"
                           value="<%=proveedor.getEmailProveedor()%>"
                           required/></div>

                <div class="col-6"><label class="inputtext">Dirección: </label>
                    <input class="form-control"
                           type="text"
                           name="direccionProveedor"
                           value="<%=proveedor.getDireccionProveedor()%>"
                           required/>
                </div>

                <div class="col-6"><label class="inputtext">Teléfono: </label>
                    <input class="form-control"
                           type="number"
                           name="telefonoProveedor"
                           value="<%=proveedor.getTelefonoProveedor()%>"
                           required/>
                </div>

                <div>
                    <br>
                    <br> <input class="btn btn-primary boton" type="submit" value="Actualizar"/>
                </div>
            </div>

        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>