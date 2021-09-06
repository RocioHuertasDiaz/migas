<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%java.text.DateFormat fecha = new SimpleDateFormat("yyyy-MM-dd");%>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">

<!DOCTYPE html>
<html>

<div class="menu">
    <% usuario User = (usuario) request.getAttribute("Usuario"); %>
    <h3 class="tituloRoll"> Analista de iventarios: <br> <%/*User.getUsuario()*/%>
    </h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>
            <li><a href="AsistenteInventarios.jsp">PRODUCCION</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">PRODUCTO TERMINADO </a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="RegistroProducto.jsp">Registro Producto</a></li>
                    <li class="nav-item"><a href="">Registro Devolucion Producto</a></li>
                    <li class="nav-item"><a href="Listaproducto.jsp">Consulta Inventario de producto</a></li>
                </ul>
            </nav>

        </ul>
    </nav>
</div>
<div class="contenido">

    <div class="container-sm">
        <br>
        <h2 class="tituloContenido">Registro de producto:</h2><br>

        <form class="Formulario"
              action="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=guardar" method="POST">

            <div class="row justify-content-around">

                <div class="col-6"><label class="inputtext">Id Producto: </label>
                    <input
                            class="form-control"
                            type="number"
                            name="idProducto"
                            pattern="{25}"/></div>

                <div class="col-6"><label class="inputtext" for="nombreProducto">Nombre del Producto:</label>
                    <input
                            class="form-control"
                            name="nombreProducto"
                            id="nombreProducto"
                            type="text"
                            placeholder="Nombre del Producto"
                            required/></div>
            </div>
            <br>
            <div class="row justify-content-around">
                <div class="col-6"><label class="inputtext">Cantidad: </label>
                    <input
                            class="form-control"
                            type="number"
                            name="cantidadProducto"
                            placeholder="123456789"
                            pattern="{1,50000000}" required/>
                </div>

                <div class="col-6"><label class="inputtext" for="fechaElaboracion">Fecha Elaboracion:</label>
                    <input
                            class="form-control"
                            name="fechaElaboracion"
                            id="fechaElaboracion"
                            type="date"
                            value="<%= fecha.format(new java.util.Date())%>"
                            required/></div>
            </div>
            <br>
            <div class="row justify-content-around">
                <div class="col-6"><label class="inputtext" for="fechaVencimiento">Fecha Vencimiento:</label>
                    <input
                            class="form-control"
                            name="fechaVencimiento"
                            id="fechaVencimiento"
                            type="date"
                            value="<%= fecha.format(new java.util.Date())%>"
                            required/>
                </div>
                <div class="col-6"><label class="inputtext" for="loteProducto">lote del Producto:</label>
                    <input
                            class="form-control"
                            name="loteProducto"
                            id="loteProducto"
                            type="text"
                            placeholder="Lote del Producto"
                            required/>
                </div>
                <br>
                <br>
                <div class="col-6"><label class="inputtext">Precio Unitario: </label>
                    <input
                            class="form-control"
                            type="number"
                            name="precioUnitario"
                            placeholder="$123456"
                            required pattern="{30}"/>

                </div>
            </div>
            <br>

            <input class="btn btn-primary boton" type="submit" value="Registrar Producto"/>

        </form>
    </div>
</div>

</html>


<%@include file="/includes/pie.jsp" %>