 <!DOCTYPE html>
<html lang="en-GB">
<head>
  <title>{{config('app.name')}}</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script>
  function displayYear(){
    document.write(new Date().getFullYear())
  }
</script>
</head>
<body class="">
@include('showroom.wrappers.navi')
<div class="container-fluid">
<div class="jumbotron jumbotron-fluid">
<div class="container-fluid">
    <h1 class="text-center">{{config('app.name')}}</h1>
    <p class="text-center">Simply Rocks</p>
  </div>
</div>
</div>
<div class="container-fluid">
<div class="row">
<div class="col">
@yield('content')
</div>
</div>
</div>
<footer>
@include('showroom.wrappers.social')
</footer>
</body>
</html>
