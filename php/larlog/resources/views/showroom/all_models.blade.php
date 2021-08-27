@extends('showroom.wrappers.app')
@section('content')
  @if(count($listModel) > 0)
    @foreach($listModel as $allModels)
  <div class="card">
    <h3><a href="/lists/{{$allModels->id}}">{{$allModels->Make}}</a></h3>
    <p>{{$allModels->Model}}</p>
    <p>{{$allModels->Year}}</p>
  </div>
    @endforeach
  @else
    <p>No Models Found!</p>
  @endif
@endsection
