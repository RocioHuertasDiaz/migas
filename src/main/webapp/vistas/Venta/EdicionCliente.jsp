<%@ page import="com.migas.Model.Beans.Cliente" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>
<div class="menu">
    <h3 class="tituloRoll"> ANALISTA DE COMPRAS <br></h3>
    <nav>
        <ul>
            <li><a href="../Usuario/inicioS.jsp">Inicio</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">VENTAS</a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="listaVenta.jsp">Reporte de ventas</a></li>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Registro de Cotizaciones</a></li>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Lista de Cotizaciones</a></li>
                </ul>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">CLIENTES</a></li>
                <ul>
                    <li class="nav-item"><a href="RegistroCliente.jsp">Registro de clientes</a></li>
                    <li class="nav-item"><a href="listaClientes.jsp">Lista de Clientes</a></li>
                </ul>
            </nav>
        </ul>
    </nav>
</div>
<div class="contenido">
    <div class="container-sm">
        <br>
        <h2 class="tituloContenido">Actualización Cliente:</h2><br>
        <%Cliente cliente = (Cliente) request.getAttribute("cliente");%>

        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletCliente?opcion=editar"
              method="post">
            <div class="row justify-content-around">

                <input type="hidden" name="nitCliente" value="<%=cliente.getNitCliente()%>">

                 <div class="col-6"><label class="inputtext">Razón Social: </label>
                    <input class="form-control"
                           value="<%=cliente.getNombreCliente()%>"
                           type="text"
                           name="nombreCliente"
                           required
                           pattern="[A-Za-z ]{2,40}"/></div>
                <br>
                <div class="col-6"><label class="inputtext">Nombre Contacto: </label>
                    <input class="form-control"
                           value="<%=cliente.getNombreContacCliente()%>"
                           type="text"
                           name="nombreContacCliente"
                           required
                           pattern="[A-Za-z ]{2,40}"/></div>

                <div class="col-6"><label class="inputtext">Dirección Cliente: </label>
                    <input class="form-control"
                           value="<%=cliente.getDireccionCliente()%>"
                           type="text"
                           name="direccionCliente" required
                    /></div>
                <br>

                <div class="col-6"><label class="inputtext">Correo Cliente: </label>
                    <input class="form-control"
                           value="<%=cliente.getEmailCliente()%>"
                           type="email"
                           name="emailCliente" required/></div>
                <br>

                <div class="col-6"><label class="inputtext">Teléfono Cliente: </label>
                    <input class="form-control"
                           value="<%=cliente.getTelefonoCliente()%>"
                           type="number"
                           name="telefonoCliente" required/></div>


                <div class="col-6"><label for="tipo">Tipo de Cliente:</label>
                    <select class="form-control" name="tipoCliente" id="tipo">
                        <option>Persona</option>
                        <option>Empresa</option>
                    </select>
                </div>

                <div class="col-6">
                    <br>
                    <br>
                    <input class="btn btn-primary boton" type="submit" value="Actualizar Cliente"/>
                </div>



            </div>
        </form>
    </div>
</div>

</html>

<%@include file="/includes/pie.jsp" %>