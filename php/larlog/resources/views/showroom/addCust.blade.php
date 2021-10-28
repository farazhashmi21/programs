@extends('showroom.wrappers.app')
@section('content')
  {{Form::open(['action' => "Customers@store"])}}
  <div class="form-group">
    {{Form::label('customer_name','Customer Name')}}
    {{Form::text('customer_name','',['class' => 'form-control'])}}
</div>
  <div class="form-group">
    {{Form::label('customer_email','Customer Email')}}
    {{Form::email('customer_email','',['class' => 'form-control'])}}
</div>
  <div class="form-group">
    {{Form::label('customer_phone','Customer Phone')}}
    {{Form::number('customer_phone','',['class' => 'form-control'])}}
</div>
  <div class="form-group">
    {{Form::label('customer_pic','Customer Photo')}}
    {{Form::text('customer_pic','',['class' => 'form-control','placeholder' => 'Enter Image URL'])}}
</div>
  <div class="form-group">
    {{Form::submit('Add Customer')}}
    {{Form::button('Clear')}}
</div>
  {{Form::close()}}
@endsection