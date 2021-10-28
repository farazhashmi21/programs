@extends('Lare.layouts.app')
@section('content')
{{ Form::open(['action' => ['PostsController@update',$displayPost->id],'method' => 'PUT'])}}
<div class="form-group">
{{ Form::label('title','Title') }}
{{ Form::text('title',$displayPost->Title,['class' => 'form-control'])}}
</div>
<div class="form-group">
{{Form::label('post', 'Post')}}
{{Form::textarea('post',$displayPost->body,['class' => 'form-control'])}}
</div>
{{Form::submit('Edit',["class" => "btn btn-primary"])}}
{{ Form::close()}}
@endsection