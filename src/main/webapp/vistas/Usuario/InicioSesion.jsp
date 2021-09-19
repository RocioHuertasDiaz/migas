<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MIGAS</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <link rel="icon" href="${pageContext.request.contextPath}/static/img/favicon1.png">
</head>
<body>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
            <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
                <div class="card col-lg-4 mx-auto">
                    <div class="card-logo px-10 py-xl-1">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/LOGO.png" alt="">
                    </div>
                    <div class="card-body px-5 py-5">
                        <h3 class="card-title text-center mb-3">Iniciar Sesión</h3>
                        <form action="<%=request.getContextPath()%>/Usuario?opcion=iniciar"
                              method="post">
                            <div class="form-group">
                                <label>Usuario *</label>
                                <input type="text" class="form-control p_input" name="idenUsuario" required>
                            </div>
                            <div class="form-group">
                                <label>Contraseña *</label>
                                <input type="password" class="form-control p_input" name="claveUsuario" required>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div class="form-group d-flex align-items-center justify-content-between">
                                <!--<div class="form-check">
                                  <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input"> Remember me </label>
                                </div>-->
                                <a href="#" class="forgot-pass">Olvidó la contraseña</a>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-outline-warning btn-block enter-btn"
                                        name="verificar">Iniciar
                                </button>
                            </div>
                            <!--<div class="d-flex">
                              <button class="btn btn-facebook mr-2 col">
                                <i class="mdi mdi-facebook"></i> Facebook </button>
                              <button class="btn btn-google col">
                                <i class="mdi mdi-google-plus"></i> Google plus </button>
                            </div>-->
                            <!--<p class="sign-up">Don't have an Account?<a href="#"> Sign Up</a></p>-->
                            <br>

                            <div style="color: orangered" class="text-center">
                                <%
                                    if (request.getAttribute("mensajeError") != null) {
                                %>
                                ${mensajeError}
                                <%} else {%>
                                ${mensajeExito}
                                <%}%>

                            </div>
                            <br>
                        </form>
                    </div>

                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="${pageContext.request.contextPath}/static/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="${pageContext.request.contextPath}/static/js/off-canvas.js"></script>
<script src="${pageContext.request.contextPath}/static/js/hoverable-collapse.js"></script>
<script src="${pageContext.request.contextPath}/static/js/misc.js"></script>
<script src="${pageContext.request.contextPath}/static/js/settings.js"></script>
<script src="${pageContext.request.contextPath}/static/js/todolist.js"></script>
<!-- endinject -->
</body>
</html>