<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">


<div class="menu">
    <% usuario User = (usuario) request.getAttribute("Usuario"); %>

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

<div class="contenido">
    <div class="container-md">
        <br>
        <h2 class="tituloContenido">Usuarios Registrados:</h2><br><br>

        <a class="btn" href="RegistroUsuario.jsp">Registro Nuevo Usuario</a>
        <br>
        <br>
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

<%@include file="/includes/pie.jsp" %>