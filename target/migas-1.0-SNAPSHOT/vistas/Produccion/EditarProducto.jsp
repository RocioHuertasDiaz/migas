<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Beans.Producto" %>
<%@include file="../../includes/encabezado.jsp" %>
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
    <div class="container-sm"><br>
        <h2 class="tituloContenido">Actualización de producto:</h2><br>
        <% Producto producto = (Producto) request.getAttribute("producto"); %>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=editar"
              method="POST">
            <h4>id producto:</h4>
            <input type="" name="idProducto" value="<%=producto.getIdProducto()%>">

            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext" for="nombreProducto">Nombre del Producto:</label>
                    <input
                            class="form-control"
                            name="nombreProducto"
                            id="nombreProducto"
                            type="text"
                            value="<%=producto.getNombreProducto()%>"
                            pattern="[A-Za-z ]{2,40}"
                            required autofocus/></div>
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="cantidadProducto">Cantidad Producto Terminado :</label>
                <input class="form-control"
                       type="number"
                       name="cantidadProducto"
                       id="cantidadProducto"
                       value="<%=producto.getCantidadProducto()%>"
                       required pattern="{2,40}">
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="fechaElaboracion">Fecha de Elaboración :</label>
                <input class="form-control"
                       type="date"
                       name="fechaElaboracion"
                       id="fechaElaboracion"
                       value="<%=producto.getFechaElaboracion()%>"
                       required pattern="">
            </div>
            <br>

            <div class="col-6"><label class="inputtext" for="fechaVencimiento">Fecha de Vencimiento :</label>
                <input class="form-control"
                       type="date"
                       name="fechaVencimiento"
                       id="fechaVencimiento"
                       value="<%=producto.getFechaVencimiento()%>"
                       required pattern="">
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="loteProducto">Lote Producto :</label>
                <input class="form-control"
                       type="text"
                       name="loteProducto"
                       id="loteProducto"
                       value="<%=producto.getLoteProducto()%>"
                       required pattern="[a-zA-Z0-9]{2,40}">
            </div>
            <br>
            <div class="col-6"><label class="inputtext" for="precioUnitario">Precio Unitario :</label>
                <input class="form-control"
                       type="text"
                       name="precioUnitario" id="precioUnitario"
                       value="<%=producto.getPrecioUnitario()%>"
                       pattern="{2,40}">
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