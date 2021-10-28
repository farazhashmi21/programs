<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>{{config('app.name')}}</title>
<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
});
</script>    </head>
    <body class="bg-light">
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

<div class="jumbotron text-center bg-light">
  <h1>{{config('app.name')}}</h1>
  <p><?php echo date("M-d-Y"); ?></p>
  <!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm justify-content-center bg-light">
@include('Lare.links')
</nav>                  
</div>
     </div>
<div class="container">
  <div class="row">
<div class="col-sm-10">
@yield('content')
</div>
<div class="col-sm-2 bg-success">
<marquee direction="up">ADS</marquee>
</div>
    </div>
<div class="row">
<div class="col bg-success">
<marquee direction="right">ADS</marquee>
</div>
</div>
  </div>
<div class="text-center bg-light" style="margin-bottom:0">
<div class="row">
<div class="col-sm-4">
@include('Lare.social')
</div>
<div class="col-sm-4">
<p><a href="http://laral">{{config('app.name')}}</a> &#169; <script>document.write(new Date().getFullYear());</script></p>
</div>
<div class="col-sm-4">
<p>Develope By <a href="https://about.me/faraz_hashmi">Developer Faraz Hashmi</a></p>
</div>
</div>
</div>
</body>
</html>
