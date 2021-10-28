<?php
  $this->load->helper('url');
?>
<!doctype html>
<html lang="en-US">
<head>
<title>Wellcome To Home</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href=""/>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">
<div class="container">
<div class="jumbotron text-center">
<h1 class=""><a href="<?php echo base_url(); ?>">Wellcome To Home</a></h1>
<h2 class="badge">Home Site For Internet Testing</h2>
</div>
<nav class="navbar navbar-default">
<ul class="nav">
<li><a href="../index.php">Home</a></li>
<li><a href="../index.php/about">About Us</a></li>
<li><a href="">Contact Us</a></li>
<li><a href="">Blog</a></li>
</ul>
</nav>
<div class="row">
<div class="col-sm-12">
<article>
<div>
<p class="alert alert-warning text-center text-danger">ERROR</p>
<p class="alert alert-warning text-center text-danger"><?php echo $errr; ?></p>
</div>
</article>
</div>
</div>
<footer class="">
<nav class="navbar navbar-default">
<ul class="nav">
<li><a href="../index.php">Home</a></li>
<li><a href="../index.php/about">About Us</a></li>
<li><a href="">Contact Us</a></li>
<li><a href="">Blog</a></li>
</ul>
</nav>
<p class="text-center">Wellcome To Home &#169; <?php echo date("Y"); ?></p>
<p class="text-center"><abbr title="Syed Muhammad Faraz Hashmi"><a href="https://about.me/farazhashmi">Meet The Developer</a></abbr></p>
</footer>
</div>
</body>
</html>
