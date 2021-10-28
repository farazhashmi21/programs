@extends('showroom.wrappers.app')
@section('content')
  {{Form::open(['action'=>'ListsController@store'])}}
  <div class="form-group">
  {{Form::label('Make','Make')}}
  {{Form::text('Make', '', ['class'=>'form-control'])}}
</div>
  <div class="form-group">
  {{Form::label('Model','Model')}}
  {{Form::text('Model', '', ['class'=>'form-control'])}}
</div>
  <div class="form-group">
  {{Form::label('Year','Year')}}
  {{Form::number('Year', '', ['class'=>'form-control'])}}
</div>
  <div class="form-group">
  {{Form::label('Description','Description')}}
  {{Form::text('Description', '', ['class'=>'form-control'])}}
</div>
  <div class="form-group">
  {{Form::label('Image','Image')}}
  {{Form::text('Image', '', ['class'=>'form-control'])}}
</div>
  <div class="form-group">
  {{Form::submit('Add',['class'=>'btn btn-primary'])}}
  {{Form::submit('Clear', ['class'=>'btn btn-danger'])}}
</div>
  {{Form::close()}}
@endsection