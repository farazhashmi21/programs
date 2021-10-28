@extends('Lare.layouts.app')
@section('content')
<div class="card">
  <div class="card-header">{{$Post->Title}}</div>
  <div class="card-body">{{$Post->body}}</div>
  <div class="card-footer">{{$Post->created_at}}</div>
</div>
<a href="/posts" class="btn btn-primary">Return to Posts</a>
<a href="/posts/{{$Post->id}}/edit" class="btn btn-warning">Edit This Post</a>
{{Form::open(['action' => ['PostsController@destroy',$Post->id],'method' => 'DELETE'])}}
  {{Form::submit('Remove Post',['class' => 'btn btn-danger'])}}
{{Form::close()}}
@endsection
