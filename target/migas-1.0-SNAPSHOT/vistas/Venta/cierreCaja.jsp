<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>CIERRE DE CAJA</title>
</head>
<body>
<div class="Contenedor">
    <div class="Contenedor30">
        <h4 class="tituloRoll"> CAJERO: </h4>

        <nav>
            <ul>
                <li><a href="../Usuario/inicioS.jsp">Inicio</a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
                                                 href="../../vistas/Venta/RegistroVenta.jsp">VENTAS</a></li>
                <nav>
                    <ul>
                        <li class="nav-item"><a href="../Venta/inicioCaja.jsp">Iniciar Caja</a></li>
                        <li class="nav-item"><a href="../Venta/RegistroVenta.jsp">Venta</a></li>
                        <li class="nav-item"><a href="../Venta/listaVentaCajero.jsp">Reporte ventas</a></li>
                        <li class="nav-item"><a href="../Venta/cierreCaja.jsp">Cierre Caja</a></li>
                    </ul>

                </nav>
            </ul>
        </nav>
    </div>
    <div class="Contenedor70">
        <div class="login-box">
            <h1>Cierre Caja</h1>
            <form class="Formulario" action="" method=""> <!-- falta implementar-->

                <h5><label>Número de arqueo: </label><br> <input type="number" name="Arqueo"
                                                                 placeholder="0" pattern="{2,40}"
                                                                 autofocus/></h5>
                <!-- falta implementar: debe salir la base de la vista ventas-->
                <h5><label>fecha de Apertura: </label><br> <input type="date" name="fecha"
                                                                  placeholder="dd/mm/aaaa" required
                                                                  pattern="[A-Za-z]{2,40}"/>
                </h5>
                <h5><label>Cantidad Dinero Inicio: </label><br> <input type="number" name="apellido"
                                                                       placeholder="$$$$$$$$$$" required
                                                                       pattern="[A-Za-z]{2,40}"/></h5>


                <br> <input type="submit" value="Grabar"/>
            </form>
        </div>
    </div>
</div>

</body>
</html>
<%@include file="../../includes/pie.jsp" %>
