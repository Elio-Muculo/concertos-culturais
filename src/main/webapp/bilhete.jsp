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
                        <a href="InicioServlet"><img src="./img/logo.jpg" height="58" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-10 col-md-10">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="InicioServlet">p??gina inicial</a></li>
                                <li><a href="sobre.jsp">Sobre</a></li>
                                <li  class="active"><a href="EventosServlet">Eventos</a></li>
                                <li><a href="contacto.jsp">Contacto</a></li>
                            </ul>
                        </nav>
                        <div class="header__right__social">
                            <c:choose>
                                <c:when test="${user == null}">
                                    <a class="btn btn-link m-l-0" href="login.jsp" style="padding: 0; border: none; text-decoration: none; color: #000; font-size: 16px">
                                        iniciar sess??o
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <p style="color: #000">${user.email}</p>
                                </c:otherwise>
                            </c:choose>
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
            <c:if test="${msg != null}">
                <div class="alert alert-danger alert-dismissible fade show js-alert" role="alert">
                        ${msg}
                </div>
            </c:if>
            <c:if test="${msge != null}">
                <div class="alert alert-success alert-dismissible fade show js-alert" role="alert">
                        ${msge}
                </div>
            </c:if>
            <div class="row">
                <div class="col-lg-6 order-lg-1">
                    <div class="tours__item__text">
                        <h2>${bilhete.name}</h2>
                        <div class="tours__text__widget">
                            <ul>
                                <li>
                                    <i class="fa fa-clock-o"></i>
                                    <span>${bilhete.hora_inicio}</span>
                                    <span>${bilhete.data_evento}</span>
                                </li>
                                <li>
                                    <i class="fa fa-map-marker"></i>
                                    ${bilhete.local_evento}
                                </li>
                            </ul>
                            <div class="price">MZN <span id="preco">${bilhete.valor_evento}</span></div>
                        </div>
                        <div class="tours__text__desc">
                            <p>${bilhete.descricao}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 order-lg-2">
                    <div class="tours__item__pic">
                        <img src="img/${bilhete.cartaz}" alt="" width="475" height="475">
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
                <form action="Bilhete" method="post" style="display: flex" class="mx-4 mx-md-0">
                    <input type="hidden" name="id" value="${bilhete.codigo}">
                    <input type="hidden" name="espectador_id" value="${user.codigo}">
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
                                <input type="number" class="form-control" name="qtd" id="qtd">
                            </div>
                        </div>
                        <div class="skill__bar__item mt-5">
                            <p>Total por pagar:  <span class="mt-5 pt-2" id="valor">0.00MZN</span></p>
                            <div id="bar2" class="barfiller">
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


    <jsp:include page="footer.jsp"></jsp:include>
    <script>
        var valor = document.getElementById("valor");
        var preco = document.getElementById("preco");
        var qtd = document.getElementById("qtd");

        qtd.addEventListener("input", function (e) {
            e.preventDefault();
                console.log(qtd.value);
                console.log(preco.innerHTML);
                var total = preco.innerHTML * qtd.value;

                valor.innerText = total + "MZN";
        })
    </script>
</body>

</html>