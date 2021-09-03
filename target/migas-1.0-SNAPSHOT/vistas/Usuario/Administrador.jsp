<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<link rel="stylesheet" href="../../css/style.css">


<div class="menu">
    <% usuario User = (usuario) request.getAttribute("Usuario"); %>

    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">Home</a></li>
            <li><a href="#">Nuestra empresa</a></li>
            <li><a href="#">Organigrama</a></li>
            <li><a href="#">Regulación</a></li>
            <li><a href="#">Contacto</a></li>
        </ul>
    </nav>
</div>

<div class="contenido">

    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="row w-100 m-0">
                <div class="content-wrapper full-page-wrapper align-items-center auth login-bg">
                    <div class="card col-lg-12 mx-auto">
                        <div class="card-body px-6 py-6">
                            <h3 class="card-title text-left mb-3">Usuarios Registrados:</h3>

                            <br>
                            <br>
                            <a class="btn" href="RegistroUsuario.jsp">Registro Nuevo Usuario</a>
                            <br>
                            <br>
                            <div class="card col-lg-10 mx-auto">
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
                                        usuario Usu = null;
                                        while (iter.hasNext()) {
                                            Usu = iter.next();
                                    %>
                                    <tr>
                                        <td><%= Usu.getIdUsuario() %>
                                        </td>
                                        <td><%= Usu.getUsuario() %>
                                        </td>
                                        <td><%= Usu.getNombre()%>
                                        </td>
                                        <td><%= Usu.getApellido()%>
                                        </td>
                                        <td><%=Usu.getClave() %>
                                        </td>
                                        <td><%=Usu.getTipo()%>
                                        </td>
                                        <td><%=Usu.getEstado()%>
                                        </td>
                                        <td>
                                            <a href="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=ObtenerId&idUsuario=<%= Usu.getIdUsuario() %>">
                                                <i class="far fa-edit" style="color: darkolivegreen;"></i></a></td>

                                    </tr>
                                    <%}%>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="/includes/pie.jsp" %>