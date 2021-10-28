@extends('showroom.wrappers.app')
@section('content')
  {{Form::open(['action' => 'Comments@store'])}}
  {{Form::label('Comment','Comment Box')}}
  {{Form::textarea("Comment")}}
  {{Form::submit('Comment',['class' => 'btn btn-primary'])}}
  {{Form::close()}}
@endsection