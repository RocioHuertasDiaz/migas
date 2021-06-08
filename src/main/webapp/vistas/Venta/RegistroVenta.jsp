<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>RegistroCliente</title>
    <link rel="stylesheet" href="../../../css/estiloBase.css">

</head>
<body>
<section class="estiloSeccion">

    <div class="ContenedorForm">
        <h1>Formulario de Registro de Producto</h1>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProducto?opcion=guardar" method="POST">

            <h5><label>Id Producto: </label><br> <input type="number" name="idProducto" placeholder="Id" pattern="{25}" autofocus/> </h5>
            <h5><label>Nombre Producto: </label><br> <input type="text" name="nombreProducto" placeholder="Nombre Producto" required pattern="[A-Za-z]{2,40}"/> </h5>
            <h5><label>Cantidad: </label><br> <input type="number" name="cantidadProducto" placeholder="Cantidad" required pattern="{1,50000000}"/></h5>
            <h5><label>Fecha de Elaboración: </label><br> <input type="date" name="fechaElaboracion" required/></h5>
            <h5><label>Fecha de Vencimiento: </label><br> <input type="date" name="fechaVencimiento" required/></h5>
            <h5><label>Lote Producto: </label><br> <input type="text" name="loteProducto" placeholder="ABC12345" required/></h5>
            <h5><label>Precio Unitario: </label><br> <input type="number" name="precioUnitario" placeholder="$123456" required pattern="{30}"/></h5>

            <br><br>
            <br> <input  class="nav-link" type="submit" value="Registrar Producto"/>
        </form>
    </div>
    <div class="Contenedorimg">
        <img class="estiloimg" src="../../img/imgRegistro.png" alt="Logo Migas">
    </div>
</section>


</body>
</html>


<%@include file="/includes/pie.jsp" %>