<!DOCTYPE html>
<html lang="zxx">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>DJoz | Template</title>

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
                                <li><a href="InicioServlet">página inicial</a></li>
                                <li><a href="EventosServlet">Eventos</a></li>
                                <li class="active"><a href="contacto.jsp">Contacto</a></li>
                            </ul>
                        </nav>
                        <div class="header__right__social">
                            <c:choose>
                                <c:when test="${user == null}">
                                    <a class="btn btn-link m-l-0" href="login.jsp" style="padding: 0; border: none; text-decoration: none; color: #000; font-size: 16px">
                                        iniciar sessão
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
                        <a href="#"><i class="fa fa-home"></i>Pagina Inicial</a>
                        <span>Contactos</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->



    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="contact__address">
                        <div class="section-title">
                            <h2>Contactos</h2>
                        </div>
                        <p> Teatro e Televisão Gungu</p>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i>
                                <h5>Endereço</h5>
                                <p>Rua Travessa de Varreta</p>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <h5>Telefone</h5>
                                <span>+(258)87 052 4206</span>

                            </li>
                            <li>
                                <i class="fa fa-envelope"></i>
                                <h5>Email</h5>
                                <p>eventos@gungu.com</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="contact__form">
                        <div class="section-title">
                            <h2>Entre em contacto</h2>
                        </div>
                        <p>Entre em contacto conosco, garanta o seu bilhete e venha disfrutar do melhor teatro, música
                        e cultura.</p>
                        <form action="#">
                            <div class="input__list">
                                <input type="text" placeholder="Nome">
                                <input type="text" placeholder="Email">
                                <input type="text" placeholder="Website">
                            </div>
                            <textarea placeholder="Comentário"></textarea>
                            <button type="submit" class="site-btn">ENVIAR MENSAGEM</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->



    <jsp:include page="footer.jsp"></jsp:include>

</body>

</html>