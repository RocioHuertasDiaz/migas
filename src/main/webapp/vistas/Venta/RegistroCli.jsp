<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/includes/encabezado.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>RegistroCliente</title>
    <!--<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->
    <link rel="stylesheet" href="../../css/estiloBase.css">

</head>
<body>
<section class="estiloSeccion">

    <div class="ContenedorForm">
        <h1>Formulario de Registro de Clientes</h1>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=guardar" method="POST">
            <h5><label>NIT o CC: </label><br> <input type="number" name="nitCliente" placeholder="Nit ó CC" pattern="{25}" autofocus/> </h5>
            <h5><label>Razon Social o Nombre: </label><br> <input type="text" name="nombreCliente" placeholder="Razon Social o nombre" required pattern="[A-Za-z]{2,40}"/> </h5>
            <h5><label>Nombre Contacto: </label><br> <input type="text" name="nombreContacClien" placeholder="Contacto" required pattern="[A-Za-z]{2,40}"/></h5>
            <h5><label>Direccion: </label><br> <input type="text" name="direccionCliente" placeholder="Direccion" required/></h5>
            <h5><label>Correo Electrónico: </label><br> <input type="email" name="emailCliente" placeholder="abcd@correo.com" required/></h5>
            <h5><label>Teléfono: </label><br> <input type="text" name="telefonoCliente" placeholder="1234567489" required pattern="{20}"/></h5>
            <tr>
                <td><h5><label for="tipo">Tipo Usuario:</label></h5></td>
                <td><select name="tipoCliente" id="tipo">
                    <option>Empresa</option>
                    <option>Persona</option>
                </select></td>
            </tr>
            <br><br>
            <br> <input  class="nav-link" type="submit" value="Registrar Cliente"/>
        </form>
    </div>
    <div class="Contenedorimg">
        <img class="estiloimg" src="../../img/imgRegistro.png" alt="Logo Migas">
    </div>
</section>


</body>
</html>


<%@include file="/includes/pie.jsp" %>