<%--
  Created by IntelliJ IDEA.
  User: Elliot
  Date: 29/10/2022
  Time: 19:52
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="DJoz Template">
    <meta name="keywords" content="DJoz, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Teatro Gungu | Iniciar Sessão</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;500;600;700&display=swap" rel="stylesheet">


    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="icon" type="image/png" sizes="16x16" href="./img/logo.jpg">

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

    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm" style="background-color: #febc0d">
            <div class="container">
                <a class="navbar-brand" style="color: #000" href="InicioServlet">
                    Teatro Gungu |  Apresenta.
                </a>
            </div>
        </nav>
        <div class="container mt-5" style="max-height: 80vh">
            <div class="row" >
                <div class="col-md-6">
                    <div class="card">
                        <img src="./img/logo.jpg" alt="pagina de login" width="100%" height="480px">
                    </div>
                </div>
                <div class="col-md-5 mt-md-0 mt-5">
                    <div>
                        <div class="card-header" style="background-color: #febc0d">Iniciar Sessão</div>
                        <div class="card-body align-content-center pt-3 mt-3 pt-md-5 mt-md-5">

                            <form method="POST" action="LoginServlet">
                               <c:if test="${msg != null}">
                                   <div class="alert alert-danger alert-dismissible fade show js-alert" role="alert">
                                           ${msg}
                                   </div>
                               </c:if>
                                <div class="row mb-3">
                                    <label for="email" class="col-md-4 col-form-label text-md-end" style="color: #ffff">Endereço Email</label>
                                    <div class="col-md-8">
                                        <input id="email" type="email" class="form-control" name="email" required autocomplete="email" autofocus>

                                        <span class="invalid-feedback" role="alert">
                                            <strong></strong>
                                        </span>
                                    </div>
                                </div>

                                <div class="row mb-4">
                                    <label for="password" class="col-md-4 col-form-label text-md-end" style="color: #ffff">Password</label>

                                    <div class="col-md-8">
                                        <input id="password" type="password" class="form-control" name="password" required autocomplete="current-password">

                                        <span class="invalid-feedback" role="alert">
                                                <strong></strong>
                                        </span>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <div class="col-md-6 offset-md-4">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember" id="remember">

                                            <label class="form-check-label" for="remember" style="color: #ffff">
                                                Lembrar de mim
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row justify-content-between mt-5 pt-3 mt-md-3 pt-md-3">
                                    <div class="col-md-4 mb-0">
                                        <div class="col-md-12 offset-md-4" style="padding: 0">
                                            <button type="submit" class="btn px-5" style="background-color: #febc0d; color: #000">
                                                Login
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-md-4 mt-2 mt-md-0">
                                        <a class="btn btn-link m-l-0" href="cadastrar.jsp" style="padding: 0; border: none; text-decoration: none; color: #febc0d; font-size: 14px">
                                            Criar uma conta
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>

</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script>
    if (document.querySelector('.js-alert')) {
        document.querySelectorAll('.js-alert').forEach(function($el) {
            setTimeout(() => {
                $el.classList.remove('show');
            }, 4000);
        });
    }
</script>
</html>
