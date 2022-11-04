<%--
  Created by IntelliJ IDEA.
  User: Elliot
  Date: 04/11/2022
  Time: 01:01
  To change this template use File | Settings | File Templates.
--%>

<!-- Footer Section Begin -->
<footer class="footer footer--normal spad set-bg" data-setbg="img/footer-bg.png">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6">
        <div class="footer__address">
          <ul>
            <li>
              <i class="fa fa-phone"></i>
              <p>Telefone</p>
              <h6>+(258)87 052 4206</h6>
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
          <h2>Teatro GunGu</h2>
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
          <h4>Newsletter</h4>
          <form action="#">
            <input type="text" placeholder="Email">
            <button type="submit"><i class="fa fa-send-o"></i></button>
          </form>
        </div>
      </div>
    </div>
    <!-- Link  -->
    <div class="footer__copyright__text">
      <p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> Todos direitos reservados |  <i class="fa fa-heart" aria-hidden="true"></i> por <a href="#" target="_blank">Grupo Debug.log</a></p>
    </div>
    <!-- Link  -->
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

<script>
  if (document.querySelector('.js-alert')) {
    document.querySelectorAll('.js-alert').forEach(function($el) {
      setTimeout(() => {
        $el.classList.remove('show');
      }, 4000);
    });
  }
</script>
