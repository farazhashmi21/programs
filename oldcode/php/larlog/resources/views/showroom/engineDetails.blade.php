@extends('showroom.wrappers.app')
@section('content')
    @if(!empty($engineDetails))
    <h3 class="text-center">Engine ID: {{$engineDetails->id}}</h3>
    <ul class="list-group">
     <li class="list-group-item">EngineNo: {{$engineDetails->EngineNo}}</li>
     <li class="list-group-item">ChassiNo: {{$engineDetails->ChassiNo}}</li>
     <li class="list-group-item">ManufacturingYear: {{$engineDetails->ManufacturingYear}}</li>
   </ul>
   <a href="/engines" class="btn btn-primary">All Engines</a>
   <a class="btn btn-warning" href="/engines/{{$engineDetails->id}}/edit">Edit</a>
   {{Form::open(['action' => ['EngineConfigurations@destroy',$engineDetails->id],'method' => 'DELETE'])}}
   {{Form::submit('Remove Engine',['class' => 'btn btn-danger'])}}
   {{Form::close()}}
   @endif
@endsection
