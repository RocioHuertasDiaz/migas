<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.migas.Model.Dao.ConsultaPedidoInsumo" %>
<%@ page import="com.migas.Model.Beans.pedidoInsumo" %>
<%@ page import="com.migas.Model.Beans.usuario" %>
<%@ page import="com.migas.Model.Dao.ConsultasProveedor" %>
<%@ page import="com.migas.Model.Beans.Proveedor" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    HttpSession sesion = (HttpSession) request.getSession();
    String nombre = "";
    if (sesion.getAttribute("datosUsuario") == null) {
        request.getRequestDispatcher("/vistas/Usuario/InicioSesion.jsp").forward(request, response);
    } else {
        usuario Usuario = (usuario) sesion.getAttribute("datosUsuario");
        nombre = Usuario.getTipo();
    }
%>

<!DOCTYPE html>
<head>
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
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/plugins/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/plugins/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/plugins/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/plugins/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

</head>

<body>
<div class="container-scroller">
    <!-- partial:../../partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
            <a class="sidebar-brand brand-logo" href="../../vistas/Usuario/InicioSesion.jsp">
                <img src="${pageContext.request.contextPath}/static/img/logoMigas.png" alt="logo"/></a>
            <a class="sidebar-brand brand-logo-mini" href="../../vistas/Usuario/InicioSesion.jsp">
                <img src="${pageContext.request.contextPath}/static/img/FAVICON2.png" alt="logo"/></a>
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
                            <h5 class="mb-0 font-weight-normal"><%=nombre%>
                            </h5>
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
                <a class="nav-link" href="../../vistas/Usuario/InicioSesion.jsp">
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
                        <li class="nav-item"><a class="nav-link" href="../Compras/listaInsumo.jsp">Inventario de
                            Insumos</a></li>
                        <li class="nav-item"><a class="nav-link" href="../Compras/RegistroInsumo.jsp">Registro
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
                        <li class="nav-item"><a class="nav-link" href="../Compras/RegistroPedidoInsumo.jsp">Registro
                            pedido</a></li>
                        <li class="nav-item"><a class="nav-link" href="../Compras/listaPedidoInsumo.jsp">Listado de
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
                        <li class="nav-item"><a class="nav-link" href="../Compras/listaProveedor.jsp">Lista
                            Proveedores</a></li>
                        <li class="nav-item"><a class="nav-link" href="../Compras/RegistroProveedor.jsp">Registro
                            proveedores</a></li>
                    </ul>
                </div>
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_navbar.html -->
        <nav class="navbar p-0 fixed-top d-flex flex-row">
            <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
                <a class="navbar-brand brand-logo-mini" href="../Usuario/InicioSesion.jsp"><img
                        src="../../static/img/FAVICON2.png" alt="logo"/></a>
            </div>
            <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">

                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="mdi mdi-menu"></span>
                </button>
                <ul class="navbar-nav w-100">
                    <li class="nav-item w-100">
                        <form class="">
                            <h4 class="mt-2 text-lg-center"> SISTEMA DE INFORMACIÓN PARA PANADERIAS</h4>
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
                                <img src="../../assets/images/faces/face4.jpg" alt="image"
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
                                <img src="../../assets/images/faces/face2.jpg" alt="image"
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
                                <img src="../../assets/images/faces/face3.jpg" alt="image"
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
                                <img class="img-xs rounded-circle" src="../../static/img/Admon.png" alt="">
                                <p class="mb-0 d-none d-sm-block navbar-profile-name"><%=nombre%>
                                </p>
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
                            <a class="dropdown-item preview-item">
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
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>DataTables</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">DataTables</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Listado de Proveedores:</h4>
                                        </div>
                                        <div class="col-sm-12">
                                            <label class="form-check-label">
                                                <a class="btn btn-inverse-success" href="RegistroPedidoInsumo.jsp">Registro
                                                    Nuevo Proveedor</a>
                                            </label>
                                        </div>
                                        <!-- /.card-header -->
                                        <div class="card-body">
                                            <table id="example1" class="table table-bordered table-striped">
                                                <thead>

                                                <tr>
                                                    <th>NIT PROVEEDOR</th>
                                                    <th>RAZON SOCIAL</th>
                                                    <th>NOMBRE CONTACTO</th>
                                                    <th>CORREO PROVEEDOR</th>
                                                    <th>DIRECCION PROVEEDOR</th>
                                                    <th>TELEFONO PROVEEDOR</th>
                                                    <th></th>

                                                </tr>
                                                </thead>
                                                <%
                                                    ConsultasProveedor dao = new ConsultasProveedor();
                                                    List<Proveedor> list = dao.listar();
                                                    Iterator<Proveedor> iter = list.iterator();
                                                    Proveedor proveedor = null;
                                                    while (iter.hasNext()) {
                                                        proveedor = iter.next();
                                                %>
                                                <tr>
                                                    <td><%=proveedor.getNitProveedor()%>
                                                    </td>
                                                    <td><%=proveedor.getRazonSocialProveedor()%>
                                                    </td>
                                                    <td><%=proveedor.getNombreContactoProveedor()%>
                                                    </td>
                                                    <td><%=proveedor.getEmailProveedor()%>
                                                    </td>
                                                    <td><%=proveedor.getDireccionProveedor()%>
                                                    </td>
                                                    <td><%=proveedor.getTelefonoProveedor()%>
                                                    </td>
                                                    <td>
                                                        <a href="http://localhost:8080/migas_war_exploded/Proveedor?opcion=ObtenerNit&nitProveedor=<%=proveedor.getNitProveedor()%>">
                                                            <i class="far fa-edit"
                                                               style="color: darkolivegreen;"></i></a>
                                                    </td>

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
            </section>


            <footer class="footer">
                <div class="d-sm-flex justify-content-center justify-content-sm-between">
                    <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Todos los derechos reservados &copy;  2021</span>
                    <span class="text-muted d-block text-center text-sm-center d-sm-inline-block">Version 1.0</span>
                    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
                        <a href="https://www.bootstrapdash.com/bootstrap-admin-template/"
                           target="_blank"> Contactenos</a> </span>
                </div>
            </footer>

            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
        </div>
        <!-- /.control-sidebar -->
    </div>
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/static/plugins/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/static/plugins/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/jszip/jszip.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/pdfmake/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/pdfmake/vfs_fonts.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/static/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/static/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        });
    });
</script>
</body>

</html>