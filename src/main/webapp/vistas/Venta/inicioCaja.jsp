<%@ page import="com.migas.Model.Beans.Arqueo" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
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
<div class="Contenedor">
    <div class="Contenedor30">

        <h4 class="tituloRoll"> CAJERO: <br> <%= usuario.getNombre()%> <%= usuario.getApellido()%>  </h4>
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
            <h3>Apertura Caja</h3>
            <br>
            <form class="Formulario" action="<%=request.getContextPath()%>/ServletArqueo?opcion=guardar" method="post">
                <!-- falta implementar-->

                <h4>Arqueo número: <input TYPE="hidden" name="txtid" <%=Arqueo.getNumeroArqueo()+1%>
                </h4>

                <h5><label>fecha de Apertura: </label> <input class="inputtext" type="date" name="fechaApertura"
                                                                  placeholder="dd/mm/aaaa" required
                                                               pattern="[A-Za-z]{2,40}"/></h5>
                    <h5><label>fecha de Cierre: </label> <input class="inputtext" type="date" name="fechaCierre"
                                                                    placeholder="dd/mm/aaaa" required
                                                                    pattern="[A-Za-z]{2,40}"/> </h5>
                    <h5><label>Cantidad Dinero Inicio: </label> <input class="inputtext" type="number" name="montoInical"
                                                                           placeholder="$$$$$$$$$$$" required
                                                                           pattern="[A-Za-z]{2,40}"/></h5>
                    <h5><label>Cantidad Dinero Final: </label> <input class="inputtext" type="number" name="montoFinal"
                                                                          placeholder="$$$$$$$$$$$" required
                                                                          pattern="[A-Za-z]{2,40}"/></h5>
                    <input class="boton" type="submit" value="Grabar"/>

            </form>
        </div>
    </div>
</div>

</body>
</html>
<%@include file="../../includes/pie.jsp" %>
