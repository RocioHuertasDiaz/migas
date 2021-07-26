<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.migas.Model.Dao.ConsultaUsuario" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<!DOCTYPE html>
<html>
<div class="menu">
        <h3 class="tituloRoll"> Administrador: <br> <%= usuario.getNombre()%> <%= usuario.getApellido()%>
    </h3>
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

        <h2 class="nav-item"><a href="RegistroUsuario.jsp">Registro Usuario</a></h2>

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
                <td><%= Usu.getIdUsuario() %> </td>
                <td><%= Usu.getUsuario() %> </td>
                <td><%= Usu.getNombre()%></td>
                <td><%= Usu.getApellido()%> </td>
                <td><%=Usu.getClave() %></td>
                <td><%=Usu.getTipoUsuario()%></td>
                <td><%=Usu.getEstadoUsuario()%></td>
                <td>
                    <a href="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=ObtenerId&idUsuario=<%= Usu.getIdUsuario() %>">
                        <i class="far fa-edit" style="color: darkolivegreen;"></i></a></td>

            </tr>
            <%}%>
        </table>

    </div>
</div>

</html>
<%@include file="/includes/pie.jsp" %>