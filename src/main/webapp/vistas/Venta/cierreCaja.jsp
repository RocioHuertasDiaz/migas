<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>INICIAR CAJA</title>
</head>
<body>
<div class="ContenedorForm">
    <h1>Apertura Caja</h1>
    <form class="Formulario" action="" method=""> <!-- falta implementar-->

        <h5><label>Número de arqueo: </label><br> <input type="number" name="Arqueo"
                                                         placeholder="0" pattern="{2,40}"
                                                         autofocus/>
        </h5>
        <h5><label>fecha de Apertura: </label><br> <input type="date" name="nombre"
                                                          placeholder="Ingrese sus nombres" required
                                                          pattern="[A-Za-z]{2,40}"/>
        </h5>
        <h5><label>Cantidad Dinero Inicio: </label><br> <input type="number" name="apellido"
                                                               placeholder="Ingrese sus apellidos" required
                                                               pattern="[A-Za-z]{2,40}"/></h5>


        <br> <input class="nav-link" type="submit" value="Grabar"/>
    </form>
</div>

</body>
</html>
