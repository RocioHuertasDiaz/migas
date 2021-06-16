<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="includes/encabezado.jsp" %>

<!DOCTYPE html>
<link rel="stylesheet" href="css/estiloBase.css">
<html>
<head>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <title>InicioSesión</title>
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <!--<img class="estiloimg" src="../../img/imgInicial.png" alt="Logo Migas">-->
    </div>

    <div class="login-box-body">
        <p class="login-box-msg">Iniciar Session</p>


        <form action="<%=request.getContextPath()%>/ServletUsuario?opcion=verificar" method="post">

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
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-info"></i> Mensaje:
            </a>
        </div>
        <!-- /.social-auth-links -->

        <a href="#">Olvide mi contraseña</a><br>
        <a href="vistas/Usuario/Registro.jsp" class="text-center">Registre un nuevo usuario</a>

    </div>
    <!-- /.login-box-body -->
</div>


<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>-->
</body>
</html>


<%@include file="includes/pie.jsp" %>