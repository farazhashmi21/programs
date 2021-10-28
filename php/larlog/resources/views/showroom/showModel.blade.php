@extends('showroom.wrappers.app')
@section('content')
  @if(!empty($allModels))
  <div class="card" style="width:400px">
    <img class="rounded card-img" src="{{$allModels->Image}}" alt="" height="200px" width="400px"></img>
  <div class="card-body">
    <h3>{{$allModels->Make}} {{$allModels->Model}}<span class="badge badge-default">({{$allModels->Year}})</span></h3>
    <p>{{$allModels->Description}}</p>
    <a href="/lists" class="btn btn-primary">Go Back</a>
    <a href="/lists/{{$allModels->id}}/edit" class="btn btn-warning">Edit</a>
    {{Form::open(['action' => ['ListsController@destroy',$allModels->id], 'method' => 'DELETE'])}}
        {{Form::submit('Remove',['class' => 'btn btn-danger'])}}
    {{Form::close()}}
  </div>
</div>
    @else
      <p>Model Not Found!</p>
  @endif
@endsection
