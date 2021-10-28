<?php
  $this->load->helper('url');
?>
<nav class="navbar navbar-expand-sm bg-light justify-content-center">
  <ul class="navbar-nav">
    <li class="nav-item"><a class="nav-link" href="../../index.php">Home</a></li>
    <li class="nav-item"><a class="nav-link" href="<?php echo site_url(); ?>/about">About Us</a></li>
    <li class="nav-item"><a class="nav-link" href="<?php echo site_url(); ?>/contact">Contact Us</a></li>
    <li class="nav-item"><a class="nav-link" href="">Blog</a></li>
    <li class="nav-item"><a class="nav-link" href="<?php echo site_url(); ?>/login">Login</a></li>
    <li class="nav-item"><a class="nav-link" href="<?php echo site_url(); ?>">LogOut</a></li>
</ul>
</nav>
