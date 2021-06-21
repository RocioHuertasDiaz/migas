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
        <h2>REGISTRO DE PROVEEDORES</h2>
        <div class="ContenedorForm">

            <form class="Formulario" action="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=guardar"
                  method="POST">

                <h5><label>Nit Proveedor: </label><br> <input type="number" name="nitPro" placeholder="Nit"
                                                              pattern="{2,40}" autofocus/></h5>
                <h5><label>Razon Social: </label><br> <input type="text" name="razonSocialPro"
                                                             placeholder="Nombre empresa" required
                                                             pattern="[A-Za-z]{ }{2,40}"/></h5>
                <h5><label>Contacto: </label><br> <input type="text" name="nombreContactoPro"
                                                         placeholder="Nombre del contacto" required
                                                         pattern="[A-Za-z]{ }{2,40}"/></h5>
                <h5><label>Correo Electrónico: </label><br> <input type="email" name="emailPro"
                                                                   placeholder="abcd@correo.com" required/></h5>
                <h5><label>Dirección: </label><br> <input type="text" name="direccionPro"
                                                          placeholder="Direccion Empresa" required
                                                          pattern="[A-Za-z]{ }{- #}{2,40}"/></h5>
                <h5><label>Teléfono: </label><br> <input type="text" name="telefonoPro" placeholder="Teléfono empresa"
                                                         required pattern="{11}"/></h5>


                <br> <input type="submit" value="Registrar"/>
            </form>
        </div>
    </div>
</div>


</body>
</html>


<%@include file="/includes/pie.jsp" %>