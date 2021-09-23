<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>MIGAS</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="${pageContext.request.contextPath}../../img/FAVICON2.png" type="image/gif">
    <!--<link rel="icon" href="images/fevicon.png" type="image/gif"/>-->
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
          media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout ">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="images/loading.gif" alt="#"/></div>
</div>
<!-- end loader -->
<!-- header -->
<header>
    <!-- header inner -->
    <div class="header">

        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo">
                                <a href="index.html"><img src="images/logo1.png" alt="#"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                    <div class="location_icon_bottum_tt">
                        <ul>
                            <li><img src="icon/loc2.png" alt="as"/>Localización</li>
                            <li><img src="icon/email2.png" alt="sa"/>nrhuertas@misena.edu.co</li>
                            <li><img src="icon/call2.png" alt="as"/>7754539</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 location_icon_bottum">
                    <div class="row">
                        <div class="col-md-12 ">
                            <div class="menu-area">
                                <div class="limit-box">
                                    <nav class="main-menu">
                                        <ul class="menu-area-main">
                                            <li class="active"><a href="index.html">Inicio</a></li>
                                            <li><a href="#about">Acerca de</a></li>
                                            <li><a href="#product">Módulos</a></li>
                                            <li><a href="#funcionalidades">Funcionalidades</a></li>
                                            <li><a href="#ventajas">Ventajas</a></li>
                                            <li><a href="#contact">Contáctenos</a></li>
                                            <li><a href="../../vistas/Usuario/InicioSesion.jsp">Iniciar Sesión</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end header inner -->
</header>
<!-- end header -->
<section class="slider_section">
    <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class=""></li>
            <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="first-slide" src="images/banner2.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption relative">
                        <h1>MIGAS</h1>
                        <span>Software para panaderías</span>

                        <p>Mejora los procesos productivos de tu panadería, que te permita optimizar los procesos de
                            compra y venta llevando un control de inventarios y cotizaciones</p>

                        <a class="buynow" href="#about">Acerca de</a><a class="buynow ggg" href="#contact">Quieres
                        cotizar?</a>

                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="second-slide" src="images/banner2.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption relative">
                        <h1>MIGAS</h1>
                        <span>Software para panaderías</span>

                        <p>Mejora los procesos productivos de tu panadería, que te permita optimizar los procesos de
                            compra y venta llevando un control de inventarios y cotizaciones</p>
                        <a class="buynow" href="#about">Acerca de</a><a class="buynow ggg" href="#contact">Quieres
                        cotizar?</a>

                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="third-slide" src="images/banner2.jpg" alt="Third slide">
                <div class="container">
                    <div class="carousel-caption relative">
                        <h1>MIGAS</h1>
                        <span>Software para panaderías</span>

                        <p>Mejora los procesos productivos de tu panadería, que te permita optimizar los procesos de
                            compra y venta llevando un control de inventarios y cotizaciones</p>
                        <a class="buynow" href="#about">Acerca de</a><a class="buynow ggg" href="#contact">Quieres
                        cotizar?</a>

                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <i class='fa fa-angle-left'></i>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <i class='fa fa-angle-right'></i>
        </a>
    </div>
</section>

<!-- about -->
<div id="about" class="about">
    <div class="container">
        <div class="row">

            <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                <div class="about_box">
                    <h2>MIGAS<br><strong class="black"> Software para panaderías</strong></h2>
                    <p> Migas es un software para panaderías que va a ser su gestor de inventarios, compras, ventas e
                        insumos.
                        Optimizando los procesos que llevan de manera manual y hacer crecer su empresa al ritmo del
                        mercado
                        mejorarando su productividad y así aumentar las ganancias.

                    </p>

                    <a href="#product">Ventajas</a>
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                <div class="about_img">
                    <figure><img src="images/about1.png" alt="img"/></figure>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end about -->


<!-- Funcionalidades -->
<div id="funcionalidades" class="offer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="title">
                    <h2>Funcionalidades <strong class="black"></strong></h2>
                </div>
            </div>
        </div>
    </div>
    <div class="offer-bg">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-8 margin-lkk">
                    <div class="offer_box">
                        <h3>Administración de inventarios</h3>
                        <figure><img class="imagen" src="images/funcionalidad1.png" alt="img"/></figure>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 col-sm-4 margin_ttt">
                    <div class="offer_box">
                        <h3>Seguimiento de producto</h3>
                        <figure><img class="imagen" src="images/funcionalidad2.jpg" alt="img"/></figure>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-8 margin-lkk">
                    <div class="offer_box">
                        <h3>Administración de proveedores y clientes</h3>
                        <figure><img class="imagen" src="images/funcionalidad3.jpg" alt="img"/></figure>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-8">
                    <div class="offer_box">
                        <h3>Pedidos a tiempo y con calidad</h3>
                        <figure><img class="imagen" src="images/funcionalidad4.jpg" alt="img"/></figure>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-8 margin-lkk">
                    <div class="offer_box">
                        <h3>Almacenamiento de la información
                            (Bases de datos)
                        </h3>
                        <figure><img class="imagen" src="images/funcionalidad5.jpg" alt="img"/></figure>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-8 margin-ttt">
                    <div class="offer_box">
                        <h3>Consultas y reportes</h3>
                        <figure><img class="imagen" src="images/funcionalidad6.jpg" alt="img"/></figure>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<!-- end offer -->

<!-- Módulos -->
<div id="product" class="product">
    <div class="container">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title">
                        <h2>Módulos <strong class="black"></strong></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                        <div class="product_box">
                            <figure>
                                <img class="imagen" src="images/Administrador.jpg" alt="#"/>
                                <h3>Administración</h3>
                            </figure>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                        <div class="product_box">
                            <figure>
                                <img class="imagen" src="images/ventas.jpg" alt="#"/>
                                <h3>Ventas </h3>
                            </figure>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                        <div class="product_box">
                            <figure>
                                <img class="imagen" src="images/produccion.jpg" alt="#"/>
                                <h3>Producción </h3>
                            </figure>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                        <div class="product_box">
                            <figure>
                                <img class="imagen" src="images/caja.jpg" alt="#"/>
                                <h3>Caja</h3>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="product_box">
                            <figure><img class="imagen" src="images/compras.jpg" alt="#"/>
                                <h3>Compras</h3></figure>
                        </div>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="product_box">
                            <figure>
                                <img class="imagen" src="images/almacen.jpeg" alt="#"/>
                                <h3>Almacén </h3></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- end modulos -->

<!-- for_box 1-->
<br>
<br>
<div id="ventajas" class="clients">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="title">
                    <h2>Ventajas</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- end for_box1 -->
<!-- for_box -->
<div class="for_box_bg">
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                    <div class="for_box">
                        <i><img class="imagen" src="images/1.jpg" alt="#"/></i>
                        <br>
                        <h3>Automatización</h3>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                    <div class="for_box">
                        <i><img class="imagen" src="images/2.jpg" alt="#"/></i>
                        <h3>Optimización en los procesos</h3>
                    </div>

                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                    <div class="for_box">
                        <i><img class="imagen" src="images/3.jpg" alt="#"/></i>
                        <h3>Mayor eficiencia ne las operaciones</h3>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                    <div class="for_box">
                        <i><img class="imagen" src="images/4.jpg" alt="#"/></i>
                        <h3>Compras inteligentes</h3>
                    </div>
                </div>
            </div>
            <br>
            <br>
            <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                <div class="for_box">
                    <i><img class="imagen" src="images/5.jpg" alt="#"/></i>
                    <h3>Estandarización del producto</h3>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                <div class="for_box">
                    <i><img class="imagen" src="images/6.jpg" alt="#"/></i>
                </div>
                <div class="for_box">
                    <h3>Gestión detallada de insumos</h3>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                <div class="for_box">
                    <i><img class="imagen" src="images/7.jpg" alt="#"/></i>
                    <h3>Estadisticas y proyecciones
                    </h3>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 co-sm-l2">
                <div class="for_box">
                    <i><img class="imagen" src="images/8.jpg" alt="#"/></i>
                    <h3>Software especializado</h3>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- contact -->
<div id="contact" class="contac">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="title">
                    <h2>cotización</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid padddd">
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 padddd">
            <div class="map_section">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">

                            <form class="main_form">
                                <h2>Contáctanos aquí</h2>

                                <div class="row">

                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Nombre" type="text" name="Name">
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Correo" type="text" name="Email">
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Teléfono" type="text" name="Phone">
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <textarea class="textarea" placeholder="Mensaje" type="text"
                                                  name="Message"></textarea>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <button class="send">Enviar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div id="map">
                </div>

            </div>
        </div>
    </div>


    <!-- end contact -->

    <!-- footer -->
    <!--  footer -->
    <footr>
        <div class="copyright">
            <div class="container">

                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                        <div class="address">
                            <a href="index.html"> <img src="images/logo1.png" alt="logo"/></a>
                        </div>

                    </div>
                    <p>© 2021 All Rights Reserved. Design By<a href=""> MIGAS SOFTWARE</a></p>
                </div>
            </div>
        </div>
    </footr>

    <!-- end footer -->
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <!-- javascript -->
    <script src="js/owl.carousel.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });

            $(".zoom").hover(function () {

                $(this).addClass('transition');
            }, function () {

                $(this).removeClass('transition');
            });
        });
    </script>
    <script>
        // This example adds a marker to indicate the position of Bondi Beach in Sydney,
        // Australia.
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 11,
                center: {
                    lat: 40.645037,
                    lng: -73.880224
                },
            });

            var image = 'images/maps-and-flags.png';
            var beachMarker = new google.maps.Marker({
                position: {
                    lat: 40.645037,
                    lng: -73.880224
                },
                map: map,
                icon: image
            });
        }
    </script>
    <!-- google map js -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
    <!-- end google map js -->
</div>
</body>

</html>