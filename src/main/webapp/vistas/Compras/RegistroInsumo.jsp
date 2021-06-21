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
<div class="Contenedor">
    <div class="Contenedor30">
        <nav>
            <ul>
                <li><a href="../Usuario/inicioS.jsp">INICIO</a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">COMPRAS</a></li>
                <nav>
                    <ul>
                        <li class="nav-item"><a href="../Compras/listaInsumo.jsp">Insumos</a></li>
                        <li class="nav-item"><a href="../Compras/RegistroInsumo.jsp">Registro Insumos</a></li>
                        <li class="nav-item"><a href="../Compras/listaProv.jsp">Proveedores</a></li>
                        <li class="nav-item"><a href="../Compras/RegistroProv.jsp">Registro proveedores</a></li>


                    </ul>

                </nav>
            </ul>
        </nav>
    </div>
    <div class="Contenedor70">
        <h3 class="titulo70"> Bienvenid@ al sistema de Compras </h3>
        <h3 class="titulo70"><%/*= usuario.getTipoUsuario1()*/%>: <%/*= usuario.getNombre1()*/%>
        </h3>


        <h1>Formulario de Registro de Insumos</h1>
        <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletInsumo?opcion=guardar"
              method="POST">

            <h5><label>Id Insumo: </label><br> <input type="number" name="idInsumo" placeholder="Id" pattern="{25}"
                                                      autofocus/></h5>
            <h5><label>Nombre Insumo: </label><br> <input type="text" name="nombreInsumo" placeholder="Nombre Insumo"
                                                          required pattern="[A-Za-z]{2,40}"/></h5>
            <h5><label>Cantidad Insumo(Kilos): </label><br> <input type="number" name="cantidadInsumo"
                                                                   placeholder="Cantidad" required
                                                                   pattern="{1,50000000}"/></h5>
            <h5><label>Proveedor: </label><br> <input type="text" name="Proveedor" placeholder="Proveedor" required
                                                      pattern="[A-Za-z]{2,40}"/></h5>
            <h5><label>Fecha de Ingreso: </label><br> <input type="date" name="fechaIngreso" required/></h5>
            <h5><label>Fecha de Vencimiento: </label><br> <input type="date" name="fechaVencimiento" required/></h5>
            <h5><label>Lote Insumo: </label><br> <input type="text" name="LoteInsumo" placeholder="ABC12345" required/>
            </h5>
            <h5><label>Precio Unitario: </label><br> <input type="number" name="precioUnitario" placeholder="100000"
                                                            required pattern="{30}"/></h5>

            <br><br>
            <br> <input class="nav-link" type="submit" value="Registrar Insumo"/>
        </form>
    </div>
</div>
</body>
</html>


<%@include file="/includes/pie.jsp" %>