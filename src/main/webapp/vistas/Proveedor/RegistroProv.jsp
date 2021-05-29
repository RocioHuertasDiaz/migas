<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro</title>
    <link rel="stylesheet" href="../../../css/estiloBase.css">

</head>
<body>
<section class="estiloSeccion">

    <div class="ContenedorForm">
        <h1>Formulario de Registro de Proveedor</h1>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=guardar" method="post">

            <h5 ><label>Nit Proveedor: </label><br> <input type="number" name="nitPro" placeholder="Nit" pattern="{2,40}" autofocus/> </h5>
            <h5><label>Razon Social: </label><br> <input type="text" name="razonSocialPro" placeholder="Nombre empresa" required pattern="[A-Za-z]{ }{2,40}"/></h5>
            <h5><label>Contacto: </label><br> <input type="text" name="nombreContactoPro" placeholder="Nombre del contacto" required pattern="[A-Za-z]{ }{2,40}"/></h5>
            <h5><label>Dirección: </label><br> <input type="text" name="direccionPro" placeholder="Direccion Empresa" required pattern="[A-Za-z]{ }{- #}{2,40}"/></h5>
            <h5><label>Teléfono: </label><br> <input type="text" name="telefonoPro" placeholder="Teléfono empresa" required pattern="{11}"/></h5>


            <br> <input type="submit" value="Registrar"/>
        </form>
    </div>
    <div class="Contenedorimg">
        <img class="estiloimg" src="../../img/imgRegistro.png" alt="Logo Migas">
    </div>
</section>


</body>
</html>


<%@include file="/includes/pie.jsp" %>