@extends('Lare.layouts.app')
@section('content')
  @if(count($posts) > 0)
    @foreach($posts as $data)
<div class="card">
  <div class="card-header"><a href="/posts/{{$data->id}}">{{$data->Title}}</a></div>
  <div class="card-body">{{$data->body}}</div>
  <div class="card-footer">{{$data->created_at}}</div>
</div>
    @endforeach
{{$posts->links()}}
  @else
    <p>No Post Found YET! Let's <a href="/posts/create">Create</a> One.</p>
  @endif
@endsection
