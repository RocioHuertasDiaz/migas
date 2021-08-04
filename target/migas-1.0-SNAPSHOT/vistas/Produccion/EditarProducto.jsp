<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Beans.Producto" %>
<%@ page import="com.migas.Model.Dao.ConsultaProducto" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <% usuario Usuario = (usuario) request.getAttribute("Usuario"); %>
    <h3 class="tituloRoll"> Analista de Inventarios: <br> <%/* Usuario.getNombre()*/%> <%/* Usuario.getApellido()*/%>
    </h3>
    <nav>
        <ul>
            <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
            <li><a href="AsistenteInventarios.jsp">PRODUCCION</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">PRODUCTO TERMINADO </a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="../Produccion/RegistroProducto.jsp">Registro Producto</a></li>
                    <li class="nav-item"><a href="">Registro Devolucion Producto</a></li>
                    <li class="nav-item"><a href="../Produccion/Listaproducto.jsp">Consulta Inventario de
                        producto</a></li>
                </ul>
            </nav>

        </ul>
    </nav>
</div>

<div class="contenido">
    <div class="container-sm">
        <h2 class="tituloContenido">Actualización de producto:</h2><br>

        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=editar"
              method="POST">
            <div class="row justify-content-around">
                <% Producto producto = (Producto) request.getAttribute("producto"); %>

                <div class="col-6"><label class="inputtext">Id Producto;</label> <%=producto.getIdProducto()%>
                </div>
                <div class="col-6"><label class="inputtext" for="nombreProducto">Nombre del Producto:</label>
                    <input
                            class="form-control"
                            name="nombreProducto"
                            id="nombreProducto"
                            type="text"
                            value="<%=producto.getNombreProducto()%>"
                            pattern=[a-zA-Z0-9]{2,40}
                            required autofocus/></div>
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="nombreProducto">Cantidad Producto Terminado :</label>
                <input class="form-control"
                       type="number"
                       name="cantidadProducto"
                       id="cantidadProducto"
                       value="<%=producto.getCantidadProducto()%>"
                       required pattern="*{8,15}">
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="nombreProducto">Fecha de Elaboración :</label>
                <input class="form-control"
                       type="date"
                       name="fechaElaboracion"
                       id="fechaElaboracion"
                       value="<%=producto.getFechaElaboracion()%>"
                       required pattern="*{8,15}">
            </div>
            <br>

            <div class="col-6"><label class="inputtext" for="nombreProducto">Fecha de Vencimiento :</label>
                <input class="form-control"
                       type="date"
                       name="fechaVencimiento"
                       id="fechaVencimiento"
                       value="<%=producto.getFechaVencimiento()%>"
                       required pattern="*{8,15}">
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="nombreProducto">Lote Producto :</label>
                <input class="form-control"
                       type="text"
                       name="LoteProducto"
                       id="LoteProducto"
                       value="<%=producto.getLoteProducto()%>"
                       required pattern="*{8,15}">
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="nombreProducto">Precio Unitario :</label>
                <input class="form-control" type="text" name="precioUnitario" id="precioUnitario"
                       value="<%=producto.getPrecioUnitario()%>"
                       required pattern="*{8,15}">
            </div>
            <br>
            <br>

            <button type="submit" type="button" class="btn btn-outline-secondary float-end mb-2">Actualizar Producto
            </button>


        </form>
    </div>
</div>
</html>
<%@include file="/includes/pie.jsp" %>