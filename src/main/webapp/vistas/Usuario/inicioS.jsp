<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../../includes/encabezado.jsp" %>

<!DOCTYPE html>

<html>
<head>
    <title>InicioSesión</title>
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

        <div class="login-box">
            <div class="login-logo">
                <!--<img class="estiloimg" src="../../img/imgInicial.png" alt="Logo Migas">-->
            </div>

            <div class="login-box-body">
                <p class="login-box-msg">Iniciar Session</p>

                <form class="FormularioI" action="<%=request.getContextPath()%>/ServletUsuario?opcion=verificar" method="post">

                    <div class="form-group has-feedback">
                        <label>Usuario: </label>
                        <input type="text" name="idenUsuario" class="form-control" placeholder="Usuario"/>
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <label>Contraseña: </label>
                        <input type="password" name="claveUsuario" class="form-control" placeholder="******"/>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <!-- para recordar contraseña -->
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label><input type="checkbox"> Recuérdame</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <input type="submit" name="verificar" value="Iniciar Sesion" class="btn btn-primary btn-block"/>
                    </div>
                </form>
                <div class="social-auth-links text-center">
                    <br>
                    <p>Verificación Credenciales</p>
                    <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-info"></i>
                        Mensaje:
                    </a>
                </div>
                <!-- /.social-auth-links -->

                <a href="#">Olvide mi contraseña</a><br>

            </div>
            <!-- /.login-box-body -->
        </div>
    </div>
</div>
</body>
</html>


<%@include file="../../includes/pie.jsp" %>