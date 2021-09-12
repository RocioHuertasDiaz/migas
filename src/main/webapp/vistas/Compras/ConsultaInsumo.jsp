<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Beans.Insumo" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
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
      <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumos</a></li>
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
  <div class="container-sm"><br>
    <h2 class="tituloContenido">Actualización de Insumo:</h2><br>
    <%Insumo insumo = (Insumo) request.getAttribute("insumo"); %>
    <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletInsumo?opcion=editar"
          method="POST">


      <div class="row justify-content-around">
        <input type="hidden" name="idInsumo" value="<%=insumo.getIdInsumo()%>">
        <div class="col-6"><label class="inputtext" for="nombreInsumo">Nombre del Insumo:</label>
          <input
                  class="form-control"
                  name="nombreInsumo"
                  id="nombreInsumo"
                  type="text"
                  value="<%=insumo.getNombreInsumo()%>"
                  required/></div>

        <div class="col-6"><label class="inputtext">Cantidad: </label>
          <input
                  class="form-control"
                  type="number"
                  name="cantidadInsumo"
                  value="<%=insumo.getCantidadInsumo()%>"
                  pattern="{1,50000000}" required/>
        </div>
        <div class="col-6"><label class="inputtext" for="Proveedor">Proveedor:</label>
          <input
                  class="form-control"
                  name="Proveedor"
                  id="Proveedor"
                  type="text"
                  value="<%=insumo.getProveedor()%>"
                  required/></div>

        <div class="col-6"><label class="inputtext" for="fechaIngreso">Fecha Ingreso:</label>
          <input
                  class="form-control"
                  name="fechaIngreso"
                  id="fechaIngreso"
                  type="date"
                  value="<%=insumo.getFechaIngreso()%>"
                  required/></div>
        <div class="col-6"><label class="inputtext" for="fechaVencimiento">Fecha Vencimiento:</label>
          <input
                  class="form-control"
                  name="fechaVencimiento"
                  id="fechaVencimiento"
                  type="date"
                  value="<%=insumo.getFechaVencimiento()%>"
                  required/>
        </div>
        <div class="col-6"><label class="inputtext" for="loteInsumo">lote del Producto:</label>
          <input
                  class="form-control"
                  name="loteInsumo"
                  id="loteInsumo"
                  type="text"
                  value="<%=insumo.getLoteInsumo()%>"
                  required/>
        </div>
        <br>
        <div class="col-6"><label class="inputtext">Precio Unitario: </label>
          <input
                  class="form-control"
                  type="number"
                  name="precioUnitario"
                  value="<%=insumo.getPrecioUnitario()%>"
                  required pattern="{30}"/>
        </div>
        <div class="col-6"><label class="inputtext">Documento Proveedor: </label>
          <input
                  class="form-control"
                  type="text"
                  name="documentoProveedor"
                  value="<%=insumo.getDocumentoProveedor()%>"
                  required pattern="{}"/>
        </div>
        <div class="col-6">
          <br>
          <input class="btn btn-primary boton" type="submit" value="Actualizar Insumo"/>
        </div>
      </div>

    </form>
  </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>