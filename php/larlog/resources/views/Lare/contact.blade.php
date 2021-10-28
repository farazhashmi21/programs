@extends('Lare/layouts/app')
@section('content')
<div class="col">
<h1>Contact Us:</h1>
 <form action="/action_page.php">
  <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" id="pwd">
  </div>
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
 <div class="form-group">
  <label for="comment">Comment:</label>
  <textarea class="form-control" rows="5" id="comment"></textarea>
</div> 
  <button type="submit" class="btn btn-primary">Sent</button>
  <button type="reset" class="btn btn-primary">Clear</button>
</form> 
</div>
@endsection
