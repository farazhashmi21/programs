<!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar justify-content-center">
<a class="navbar-brand" href="/">{{config('app.name')}}</a> - &#169; - <script> displayYear();</script>
 <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler bg-dark" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon bg-info"></span>
  </button>
  <!-- Links -->
<div class="collapse navbar-collapse" id="collapsibleNavbar">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="https://www.facebook.com/"><i class="fab fa-facebook-messenger"> Facebook</i></a>
  </li>
  <li class="nav-item">
      <a class="nav-link" href="https://twitter.com/"><i class="fab fa-twitter"> Twitter</i></a>
  </li>
  <li class="nav-item">
      <a class="nav-link" href="https://www.instagram.com/"><i class="fab fa-instagram"> Instagram</i></a>
  </li>
  </ul>
</div>

</nav>
