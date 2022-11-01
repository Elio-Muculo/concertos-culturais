<%@ page import="com.cultural.eventosculturais.model.Evento" %>
<%@ page import="com.cultural.eventosculturais.controller.dao.EventoDao" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="event" scope="page" class="com.cultural.eventosculturais.controller.dao.EventoDao"></jsp:useBean>


<!DOCTYPE html>
<html lang="zxx">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Teatro Gungu | Comprar bilhete</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="icon" type="image/png" sizes="16x16" href="./img/logo.jpg">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/nowfont.css" type="text/css">
    <link rel="stylesheet" href="css/rockville.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2">
                    <div class="header__logo">
                        <a href="index.jsp"><img src="./img/logo.jpg" height="58" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-10 col-md-10">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="index.jsp">página inicial</a></li>
                                <li><a href="sobre.jsp">Sobre</a></li>
                                <li  class="active"><a href="eventos.jsp">Eventos</a></li>
                                <li><a href="contacto.jsp">Contacto</a></li>
                            </ul>
                        </nav>
                        <div class="header__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Sobre</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Tours Section Begin -->
    <section class="tours spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 order-lg-1">
                    <div class="tours__item__text">
                        <h2>${evento.name}</h2>
                        <div class="tours__text__widget">
                            <ul>
                                <li>
                                    <i class="fa fa-clock-o"></i>
                                    <span>8:00pm</span>
                                    <span>Dec 15, 2019</span>
                                </li>
                                <li>
                                    <i class="fa fa-map-marker"></i>
                                    ${evento.local_evento}
                                </li>
                            </ul>
                            <div class="price">MZN ${evento.valor_evento}</div>
                        </div>
                        <div class="tours__text__desc">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aliquam aperiam consequatur
                                culpa, cupiditate doloremque dolorum ducimus eius</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aliquam aperiam consequatur
                                culpa, cupiditate doloremque dolorum ducimus eius</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 order-lg-2">
                    <div class="tours__item__pic">
                        <img src="img/events/evento-${evento.codigo}.jpg" alt="" width="475" height="475">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Tours Section End -->

    <!-- Skills Section Begin -->
    <section class="skills">
        <div class="container">
            <div class="row">
                <form action="" style="display: flex" class="mx-4 mx-md-0">
                    <div class="col-lg-9 p-0" >
                    <div class="skills__content">
                        <div class="section-title">
                            <h2>Compre o seu Bilhete</h2>
                            <h1>GunGu</h1>
                        </div>

                        <div class="skill__bar__item">
                            <p>Tipo bilhete</p>
                            <div id="bar5" class="barfiller">
                                <select name="tipo" id="tipo" class="form-control">
                                    <option value="">selecione um tipo</option>
                                    <option value="normal">Normal</option>
                                    <option value="vip">VIP</option>
                                </select>
                            </div>
                        </div>
                        <div class="skill__bar__item mt-5">
                            <p>Quantidade</p>
                            <div id="bar" class="barfiller">
                                <input type="number" class="form-control" name="qtd" id="">
                            </div>
                        </div>
                        <div class="skill__bar__item mt-5">
                            <p>Total por pagar:</p>
                            <div id="bar2" class="barfiller">
                                <span class="tip"></span>
                                <span class="fill" data-percentage="95"></span>
                            </div>
                        </div>
                    </div>
                        <input type="submit" class="primary-btn border-btn my-4 " value="Comprar Bilhete">
                    </div>
                </form>
                <div class="col-lg-6 p-0">
                </div>
            </div>
        </div>
    </section>
    <!-- Skills Section End -->




    <!-- Footer Section Begin -->
    <footer class="footer footer--normal spad set-bg" data-setbg="img/footer-bg.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__address">
                        <ul>
                            <li>
                                <i class="fa fa-phone"></i>
                                <p>Phone</p>
                                <h6>1-677-124-44227</h6>
                            </li>
                            <li>
                                <i class="fa fa-envelope"></i>
                                <p>Email</p>
                                <h6>eventos@gungu.com</h6>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 col-md-6">
                    <div class="footer__social">
                        <h2>Teatro Gungu</h2>
                        <div class="footer__social__links">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6">
                    <div class="footer__newslatter">
                        <h4>Fique Conectado!</h4>
                        <form action="#">
                            <input type="text" placeholder="Email">
                            <button type="submit"><i class="fa fa-send-o"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

    <!-- Music Plugin -->
    <script src="js/jquery.jplayer.min.js"></script>
    <script src="js/jplayerInit.js"></script>
</body>

</html>