@extends('showroom/wrappers/app')
@section('content')
@include('showroom/wrappers/navi')
<div class="col">
 <form action="/" class="needs-validation" novalidate>
  <div class="form-group">
    <label for="uname">Your Name:</label>
    <input type="text" class="form-control" id="uname" placeholder="Enter Your Name" name="uname" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
    <label for="email">Your Email Address:</label>
    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Please fill out this field.</div>
  </div>
  <div class="form-group">
 <div class="form-group">
  <label for="comment">Your Message:</label>
  <textarea class="form-control" rows="5" id="comment" required></textarea>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Check this checkbox to continue.</div>
    </label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="reset" class="btn btn-danger">Clear</button>
</form>

<script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script> 
</div>
@endsection
