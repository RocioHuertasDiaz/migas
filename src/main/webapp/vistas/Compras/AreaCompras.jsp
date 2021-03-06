<%@ page import="java.awt.*" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<%
    HttpSession sesion = (HttpSession) request.getSession();
     String nombre = "";
     if(sesion.getAttribute("datosUsuario")==null){
         request.getRequestDispatcher("/vistas/Usuario/InicioSesion.jsp").forward(request,response);
     }else{
         usuario Usuario = (usuario) sesion.getAttribute("datosUsuario");
         nombre = Usuario.getNombre();
     }
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MIGAS</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/select2/select2.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/TEMPLATE/CSS/style.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/FAVICON2.png"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon1.png"/>
</head>
<body>
<div class="container-scroller">
    <!-- partial:../../partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
            <a class="sidebar-brand brand-logo" href="../../vistas/Usuario/InicioSesion.jsp">
                <img src="${pageContext.request.contextPath}/static/img/logoMigas.png" alt="logo"/></a>
            <a class="sidebar-brand brand-logo-mini"
               href="${pageContext.request.contextPath}/vistas/Usuario/InicioSesion.jsp"><img
                    src="${pageContext.request.contextPath}/static/img/FAVICON2.png"
                    alt="logo"/></a>
        </div>
        <ul class="nav">
            <li class="nav-item profile">
                <div class="profile-desc">
                    <div class="profile-pic">
                        <div class="count-indicator">
                            <img class="img-xs rounded-circle "
                                 src="${pageContext.request.contextPath}/static/img/Admon.png" alt="">
                            <span class="count bg-success"></span>
                        </div>
                        <div class="profile-name">
                            <h5 class="mb-0 font-weight-normal"><%sesion.getAttribute("datosUsuario");%></h5>
                            <span>Roll</span>
                        </div>
                    </div>
                    <a href="#" id="profile-dropdown" data-toggle="dropdown"><i class="mdi mdi-dots-vertical"></i></a>
                    <div class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list"
                         aria-labelledby="profile-dropdown">
                        <a href="#" class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <div class="preview-icon bg-dark rounded-circle">
                                    <i class="mdi mdi-settings text-primary"></i>
                                </div>
                            </div>
                            <div class="preview-item-content">
                                <p class="preview-subject ellipsis mb-1 text-small">Account settings</p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <div class="preview-icon bg-dark rounded-circle">
                                    <i class="mdi mdi-onepassword  text-info"></i>
                                </div>
                            </div>
                            <div class="preview-item-content">
                                <p class="preview-subject ellipsis mb-1 text-small">Change Password</p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <div class="preview-icon bg-dark rounded-circle">
                                    <i class="mdi mdi-calendar-today text-success"></i>
                                </div>
                            </div>
                            <div class="preview-item-content">
                                <p class="preview-subject ellipsis mb-1 text-small">To-do list</p>
                            </div>
                        </a>
                    </div>
                </div>
            </li>
            <li class="nav-item nav-category">
                <span class="nav-link"></span>
            </li>
            <li class="nav-item menu-items">
                <a class="nav-link" href="${pageContext.request.contextPath}/vistas/Usuario/InicioSesion.jsp">
            <span class="menu-icon">
              <i class="mdi mdi-speedometer"></i>
            </span>
                    <span class="menu-title">INICIO</span>
                </a>
            </li>
            <li class="nav-item menu-items">
                <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false"
                   aria-controls="ui-basic">
            <span class="menu-icon">
              <i class="mdi mdi-laptop"></i>
            </span>
                    <span class="menu-title">MATERIA PRIMA E INSUMOS</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-basic">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"><a class="nav-link"
                                                href="${pageContext.request.contextPath}/vistas/Compras/listaInsumo.jsp">Inventario
                            de
                            Insumos</a></li>
                        <li class="nav-item"><a class="nav-link"
                                                href="${pageContext.request.contextPath}/vistas/Compras/RegistroInsumo.jsp">Registro
                            Insumo</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item menu-items">
                <a class="nav-link" data-toggle="collapse" href="#ui" aria-expanded="false"
                   aria-controls="ui-basic">
            <span class="menu-icon">
              <i class="mdi mdi-playlist-play"></i>
            </span>
                    <span class="menu-title">PEDIDOS</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"><a class="nav-link"
                                                href="${pageContext.request.contextPath}/vistas/Compras/RegistroPedidoInsumo.jsp">Registro
                            pedido</a></li>
                        <li class="nav-item"><a class="nav-link"
                                                href="${pageContext.request.contextPath}/vistas/Compras/listaPedidoInsumo.jsp">Listado
                            de
                            pedidos</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item menu-items">
                <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false"
                   aria-controls="ui-basic">
            <span class="menu-icon">
              <i class="mdi mdi-table-large"></i>
            </span>
                    <span class="menu-title">PROVEEDORES</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="auth">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"><a class="nav-link"
                                                href="${pageContext.request.contextPath}/vistas/Compras/listaProveedor.jsp">Lista
                            Proveedores</a></li>
                        <li class="nav-item"><a class="nav-link"
                                                href="${pageContext.request.contextPath}/vistas/Compras/RegistroProveedor.jsp">Registro
                            proveedores</a></li>
                    </ul>
                </div>
        </ul>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_navbar.html -->
        <nav class="navbar p-0 fixed-top d-flex flex-row">
            <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
                <a class="navbar-brand brand-logo-mini"
                   href="${pageContext.request.contextPath}vistas/Usuario/InicioSesion.jsp"><img
                        src="${pageContext.request.contextPath}/static/img/FAVICON2.png" alt="logo"/></a>
            </div>
            <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">

                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="mdi mdi-menu"></span>
                </button>
                <ul class="navbar-nav w-100">
                    <li class="nav-item w-100">
                        <form class="">
                            <h4 class="mt-2 text-lg-center"> SISTEMA DE INFORMACI??N PARA PANADERIAS</h4>
                        </form>
                    </li>
                </ul>
                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item dropdown d-none d-lg-block">
                        <!--<a class="nav-link btn btn-success create-new-button" id="createbuttonDropdown" data-toggle="dropdown"
                          aria-expanded="false" href="#">+ Create New Project</a>-->
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
                             aria-labelledby="createbuttonDropdown">
                            <h6 class="p-3 mb-0">Projects</h6>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-dark rounded-circle">
                                        <i class="mdi mdi-file-outline text-primary"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <p class="preview-subject ellipsis mb-1">Software Development</p>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-dark rounded-circle">
                                        <i class="mdi mdi-web text-info"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <p class="preview-subject ellipsis mb-1">UI Development</p>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-dark rounded-circle">
                                        <i class="mdi mdi-layers text-danger"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <p class="preview-subject ellipsis mb-1">Software Testing</p>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <p class="p-3 mb-0 text-center">See all projects</p>
                        </div>
                    </li>
                    <!--<li class="nav-item nav-settings d-none d-lg-block">
                      <a class="nav-link" href="#">
                        <i class="mdi mdi-view-grid"></i>
                      </a>
                    </li>
                    <li class="nav-item dropdown border-left">
                      <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown"
                        aria-expanded="false">
                        <i class="mdi mdi-email"></i>
                        <span class="count bg-success"></span>-->
                    </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
                         aria-labelledby="messageDropdown">
                        <h6 class="p-3 mb-0">Messages</h6>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="${pageContext.request.contextPath}images/faces/face4.jpg" alt="image"
                                     class="rounded-circle profile-pic">
                            </div>
                            <div class="preview-item-content">
                                <p class="preview-subject ellipsis mb-1">Mark send you a message</p>
                                <p class="text-muted mb-0"> 1 Minutes ago </p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="${pageContext.request.contextPath}images/faces/face2.jpg" alt="image"
                                     class="rounded-circle profile-pic">
                            </div>
                            <div class="preview-item-content">
                                <p class="preview-subject ellipsis mb-1">Cregh send you a message</p>
                                <p class="text-muted mb-0"> 15 Minutes ago </p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="${pageContext.request.contextPath}images/faces/face3.jpg" alt="image"
                                     class="rounded-circle profile-pic">
                            </div>
                            <div class="preview-item-content">
                                <p class="preview-subject ellipsis mb-1">Profile picture updated</p>
                                <p class="text-muted mb-0"> 18 Minutes ago </p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <p class="p-3 mb-0 text-center">4 new messages</p>
                    </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
                            <div class="navbar-profile">
                                <img class="img-xs rounded-circle"
                                     src="${pageContext.request.contextPath}/static/img/Admon.png" alt="">
                                <p class="mb-0 d-none d-sm-block navbar-profile-name"><%sesion.getAttribute("datosUsuario");%></p>
                                <i class="mdi mdi-menu-down d-none d-sm-block"></i>
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
                             aria-labelledby="profileDropdown">
                            <h6 class="p-3 mb-0">Profile</h6>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-dark rounded-circle">
                                        <i class="mdi mdi-settings text-success"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <p class="preview-subject mb-1">Settings</p>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item preview-item"
                               href="http://localhost:8080/migas_war_exploded/Usuario?opcion=logout">
                                <div class="preview-thumbnail">
                                    <div class="preview-icon bg-dark rounded-circle">
                                        <i class="mdi mdi-logout text-danger"></i>
                                    </div>
                                </div>
                                <div class="preview-item-content">
                                    <p class="preview-subject mb-1">Log out</p>
                                </div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <p class="p-3 mb-0 text-center">Advanced settings</p>
                        </div>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                        data-toggle="offcanvas">
                    <span class="mdi mdi-format-line-spacing"></span>
                </button>
            </div>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="page-header">
                    <h3 class="page-title"></h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"></a></li>
                            <li class=" aria-current="></li>
                        </ol>
                    </nav>
                </div>
                <div class="row">

                    <div class="col-md-12 grid-margin stretch-card">
                    </div>
                    <div class="col-12 grid-margin stretch-card">
                    </div>
                    <div class="col-md-12 grid-margin stretch-card">

                        <div class="col-xl-12 grid-margin">

                            <div class="card-body">
                                <h1 class="card-title text-md-center">Bienvenido al sistema de compras</h1>
                                <!-- inicio-->
                                <div class="main-panel">
                                    <div class="content-wrapper">
                                        <div class="row">
                                            <div class="col-sm-4 grid-margin">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5></h5>
                                                        <a class="nav-link"
                                                           href="${pageContext.request.contextPath}/vistas/Compras/listaInsumo.jsp">
                                                            <div class="row">
                                                                <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                                    <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                                        <h2 class="mb-0">MATERIA PRIMA INSUMOS</h2>

                                                                    </div>
                                                                    <h6 class="text-muted font-weight-normal"></h6>
                                                                </div>
                                                                <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                                    <i class="icon-lg mdi mdi-codepen text-primary ml-auto"></i>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4 grid-margin">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5></h5>
                                                        <a class="nav-link"
                                                           href="${pageContext.request.contextPath}/vistas/Compras/listaPedidoInsumo.jsp">
                                                            <div class="row">
                                                                <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                                    <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                                        <h2 class="mb-0">PEDIDOS</h2>
                                                                        <p class="text-success ml-2 mb-0 font-weight-medium">
                                                                        </p>
                                                                    </div>
                                                                    <h6 class="text-muted font-weight-normal"></h6>
                                                                </div>
                                                                <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                                    <i class="icon-lg mdi mdi-wallet-travel text-danger ml-auto"></i>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4 grid-margin">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5></h5>
                                                        <a class="nav-link"
                                                           href="${pageContext.request.contextPath}/vistas/Compras/listaProveedor.jsp">
                                                            <div class="row">
                                                                <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                                    <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                                        <h2 class="mb-0">PROVEEDORES</h2>
                                                                        <p class="text-danger ml-2 mb-0 font-weight-medium">
                                                                        </p>
                                                                    </div>
                                                                    <h6 class="text-muted font-weight-normal"></h6>
                                                                </div>
                                                                <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                                    <i class="icon-lg mdi mdi-monitor text-success ml-auto"></i>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- final-->
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.html -->
            <footer class="footer">
                <div class="d-sm-flex justify-content-center justify-content-sm-between">
                    <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Todos los derechos reservados &copy;  2021</span>
                    <span class="text-muted d-block text-center text-sm-center d-sm-inline-block">Version 1.0</span>
                    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
                        <a href="https://www.bootstrapdash.com/bootstrap-admin-template/"
                           target="_blank"> Contactenos</a> </span>
                </div>
            </footer>
            <!-- partial -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="${pageContext.request.contextPath}/static/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<script src="${pageContext.request.contextPath}/static/vendors/select2/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/vendors/typeahead.js/typeahead.bundle.min.js"></script>
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="${pageContext.request.contextPath}/static/js/off-canvas.js"></script>
<script src="${pageContext.request.contextPath}/static/js/hoverable-collapse.js"></script>
<script src="${pageContext.request.contextPath}/static/js/misc.js"></script>
<script src="${pageContext.request.contextPath}/static/js/settings.js"></script>
<script src="${pageContext.request.contextPath}/static/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page -->
<script src="${pageContext.request.contextPath}/static/js/file-upload.js"></script>
<script src="${pageContext.request.contextPath}/static/js/typeahead.js"></script>
<script src="${pageContext.request.contextPath}/static/js/select2.js"></script>
<!-- End custom js for this page -->
</body>

</html>