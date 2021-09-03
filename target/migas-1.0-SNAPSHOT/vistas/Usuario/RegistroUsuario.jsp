<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@include file="/includes/encabezado.jsp" %>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/nuevoEstilo.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>MIGAS</title>
<link rel="icon" href="../../img/favicon1.png">
<!DOCTYPE html>
<html>
<div class="menu">
    <h3 class="tituloRoll"> Administrador: <br>JaimeC </h3>
    <nav>
        <ul>
            <li><a href="../Usuario/InicioSesion.jsp">INICIO</a></li>
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle">USUARIOS </a></li>
            <nav>
                <ul>
                    <li class="nav-item"><a href="RegistroUsuario.jsp">Registro Usuario</a></li>
                    <li class="nav-item"><a href="Administrador.jsp">Consulta Usuarios Registrados</a></li>
                </ul>
            </nav>
        </ul>
    </nav>
</div>
<div class="contenido">

    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="row w-100 m-0">
                <div class="content-wrapper full-page-wrapper align-items-center auth login-bg">
                    <div class="card col-lg-4 mx-auto">
                        <div class="card-body px-5 py-5">
                            <h3 class="card-title text-left mb-3">Registro de Usuario</h3>
                            <form action="http://localhost:8080/migas_war_exploded/ServletUsuario?opcion=guardar"
                                  method="post">
                                <div class="form-group">
                                    <label>Usuario:</label>
                                    <input type="text" class="form-control p_input"
                                           name="usuario"
                                           pattern="[A-Za-z]{2,40}"
                                           autofocus>
                                </div>

                                <div class="form-group">
                                    <label>Nombre:</label>
                                    <input type="text" class="form-control p_input"
                                           name="nombre"
                                           pattern="[A-Za-z]{2,40}"
                                           autofocus>
                                </div>

                                <div class="form-group"><label>Apellidos: </label>
                                    <input class="form-control p_input"
                                           type="text"
                                           name="apellido"
                                           placeholder="" required
                                           pattern="[A-Za-z]{2,40}"/></div>

                                <div class="form-group"><label>Contraseña: </label>
                                    <input class="form-control p_input"
                                           type="password"
                                           name="Clave"
                                           placeholder=""></div>
                                <div class="form-group"><label for="tipo">Tipo de Usuario:</label>
                                    <select class="form-control p_input" name="tipoUsuario" id="tipo">
                                        <option>Administrador</option>
                                        <option>Asistente Inventario</option>
                                        <option>Asistente Ventas</option>
                                        <option>Asistente Compras</option>
                                        <option>Cajero</option>
                                        <option>Jefe de produccion</option>
                                    </select>
                                </div>

                                <div class="form-group"><label for="estado">Estado de usuario:</label>
                                    <select class="form-control p_input" name="estadoUsuario" id="estado">
                                        <option>Activo</option>
                                        <option>Inactivo</option>
                                    </select>
                                </div>

                                <div>
                                    <br>
                                    <br> <input class="btn btn-primary boton" type="submit" value="Registrar"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        </form>
    </div>
</div>

</html>
<%@include file="/includes/pie.jsp" %>