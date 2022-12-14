<!DOCTYPE html>
<html lang="zxx">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean scope="page" id="eventos" class="com.cultural.eventosculturais.controller.dao.EventoDao"></jsp:useBean>
<%@ page import="com.cultural.eventosculturais.model.Evento" %>
<%@ page import="java.util.ArrayList" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Teatro Gungu | Eventos</title>

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
                                <li class="active"><a href="evento.jsp">Eventos</a></li>
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

    <!-- Countdown Section Begin -->
    <section class="countdown countdown--page spad set-bg" data-setbg="img/Gilberto-Mendes.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="countdown__text">
                        <h1>Teatro Gungu Apresenta</h1>
                        <h4>O Profeta</h4>
                    </div>
                    <div class="countdown__timer" id="countdown-time">
                        <div class="countdown__item">
                            <span>20</span>
                            <p>days</p>
                        </div>
                        <div class="countdown__item">
                            <span>45</span>
                            <p>hours</p>
                        </div>
                        <div class="countdown__item">
                            <span>18</span>
                            <p>minutes</p>
                        </div>
                        <div class="countdown__item">
                            <span>09</span>
                            <p>seconds</p>
                        </div>
                    </div>
                    <div class="buy__tickets">
                        <a href="EventosServlet" class="primary-btn">Compre Bilhete</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Countdown Section End -->

    <!-- Tours Section Begin -->
    <section class="tours spad">
        <div class="container">
            <c:forEach var="evento" items="${eventosTodos}">
            <div class="row">
                <div class="col-lg-6 order-lg-1">
                    <div class="tours__item__text">
                        <h2>${evento.name}</h2>
                        <div class="tours__text__widget">
                            <ul>
                                <li>
                                    <i class="fa fa-clock-o"></i>
                                    <span>${evento.hora_inicio}</span>
                                    <span>${evento.data_evento}</span>
                                </li>
                                <li>
                                    <i class="fa fa-map-marker"></i>
                                    ${evento.local_evento}
                                </li>
                            </ul>
                            <div class="price">MZN ${evento.valor_evento}</div>
                        </div>
                        <div class="tours__text__desc">
                            <p>${evento.descricao}</p>
                        </div>
                        <a href="Bilhete?id=${evento.codigo}" class="primary-btn border-btn">Comprar Bilhete</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="tours__item__pic">
                        <img src="img/${evento.cartaz}" alt="${evento.name}" width="475" height="475">
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </section>
    <!-- Tours Section End -->

    <jsp:include page="footer.jsp"></jsp:include>

</body>

</html>