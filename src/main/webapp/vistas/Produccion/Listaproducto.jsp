<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>


<!DOCTYPE html>
<html>
<head>
    <title>Menu</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- iCheck -->
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
                <li><a href="../Usuario/inicioS.jsp">Home</a></li>
                <li><a href="#">Nuestra empresa</a></li>
                <li><a href="#">Organigrama</a></li>
                <li><a href="#">Regulación</a></li>
                <li><a href="#">Contacto</a></li>
            </ul>
        </nav>
    </div>

    <div class="Contenedor70">
        <div class="table-box">
            <table class="tabla">
                <thead>
                <tr>
                    <th>Id usuario</th>
                    <th>Usuario</th>
                    <th>Nombre Usuario</th>
                    <th>Apellido Usuario</th>
                    <th>Clave de Usuario</th>
                    <th>Tipo de Usuario</th>
                    <th>Estado de Usuario</th>
                    <th></th>
                </tr>
                </thead>
                <%
                    ConsultaUsuario dao = new ConsultaUsuario();
                    List<usuario> list = dao.listar();
                    Iterator<usuario> iter = list.iterator();
                    usuario usuario = null;
                    while (iter.hasNext()) {
                        usuario = iter.next();
                %>
                <tr>
                    <td><%= usuario.getIdUsuario() %>
                    </td>
                    <td><%= usuario.getUsuario() %>
                    </td>
                    <td><%= usuario.getNombre() %>
                    </td>
                    <td><%= usuario.getApellido() %>
                    </td>
                    <td><%=usuario.getClave() %>
                    </td>
                    <td><%=usuario.getTipoUsuario()%>
                    </td>
                    <td><%=usuario.getEstadoUsuario()%>
                    </td>
                    <td>
                        <a href="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=editar=<%= usuario.getIdUsuario() %>">
                            <i class="far fa-edit" style="color: darkolivegreen;"></i></a></td>
                </tr>
                <%}%>
            </table>

            <a href="RegistroUsuario.jsp" class="text-center">Registre un nuevo usuario</a>
        </div>
    </div>
</div>
</body>
</html>
<%@include file="/includes/pie.jsp" %>