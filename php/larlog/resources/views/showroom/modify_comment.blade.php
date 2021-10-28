@extends('showroom.wrappers.app')
@section('content')
{{Form::open(['name' => 'Edit Comment','action' => 'Comments@update'])}}
<div class="form-group">
  {{Form::label('Edit','Edit  Comment')}}
  {{Form::textarea('Edit','',['class' => 'form-control'])}}
  {{Form::submit('Edit',['class' => 'btn btn-primary'])}}
  {{Form::button('Clear',['class' => 'btn btn-danger'])}}
</div>
{{Form::close()}}
@endsection