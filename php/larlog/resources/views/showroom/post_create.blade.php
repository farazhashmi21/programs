@extends('showroom.wrappers.app')
@section('content')
{{Form::open(['action' => 'PostsController@store'])}}
<div class="form-group">
  {{Form::label('title','Title')}}
  {{Form::text('title', '',['placeholder' => "Enter Title", 'class' => "form-control"])}}
  </div>
  <div class="form-group">
  {{Form::label('post,','Post')}}
  {{Form::textarea('post','', ["placeholder" => "Enter Article For Post",'class' => 'form-control'])}}
  </div>
  <div class="form-group">
  {{Form::submit('Post',['class'=>"btn btn-primary"])}}
</div>
{{Form::close()}}
@endsection