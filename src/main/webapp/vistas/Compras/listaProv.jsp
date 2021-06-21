<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultasProv" %>
<%@ page import="com.migas.Model.Beans.Proveedor" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Menu</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <link rel="stylesheet" href="../../css/estiloBase.css">
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
        <h2>LISTADO DE PROVEEDORES</h2>
        <div>
            <table>
                <thead>
                <tr>
                    <th>NIT Proveedor</th>
                    <th>Razón Social</th>
                    <th>Nombre Contacto</th>
                    <th>Correo Electrónico</th>
                    <th>Dirección</th>
                    <th>Teléfono</th>
                    <th>Edición</th>
                    <th>Eliminación</th>
                </tr>
                </thead>
                <%
                    ConsultasProv dao = new ConsultasProv();
                    List<Proveedor> list = dao.listar();
                    Iterator<Proveedor> iter = list.iterator();
                    Proveedor proveedor = null;
                    while (iter.hasNext()) {
                        proveedor = iter.next();
                %>
                <tr>
                    <td><%= proveedor.getNitPro() %>
                    </td>
                    <td><%= proveedor.getRazonSocialPro() %>
                    </td>
                    <td><%= proveedor.getNombreContactoPro() %>
                    </td>
                    <td><%= proveedor.getEmailPro() %>
                    </td>
                    <td><%= proveedor.getDireccionPro() %>
                    </td>
                    <td><%= proveedor.getTelefonoPro() %>
                    </td>

                    <td class="tdtabla"><a class="nav-link"
                                           href="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=obtenerId=<%= proveedor.getNitPro() %>">Editar</a>
                    </td>
                    <td class="tdtabla"><a class="nav-link"
                                           href="http://localhost:8080/migas_war_exploded/ServletProveedor?opcion=Eliminar=<%= proveedor.getNitPro() %>">Eliminar</a>
                    </td>
                </tr>
                <%}%>

            </table>
            <br>
            <br>
            <br>
            <br>

            <h3>Si el proveedor no existe por favor regístrelo <a href="RegistroProv.jsp"> Aquí</a></h3>
        </div>
    </div>
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>