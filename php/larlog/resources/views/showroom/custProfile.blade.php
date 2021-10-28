@extends('showroom.wrappers.app')
@section('content')
<div class="card" style="width:400px">
  <img class="card-img-top" src="{{$pro->Image}}" alt="Card image">
  <div class="card-body">
    <h4 class="card-title">{{$pro->Name}}</h4>
    <p class="card-text"><a href="mailto:{{$pro->Email}}">{{$pro->Email}}</a></p>
    <p class="card-text">{{$pro->Phone}}</p>
    <a href="https://www.facebook.com/" class="btn btn-primary">See Profile</a>
    <a href="/cust/{{$pro->id}}/edit" class="btn btn-warning">Edit Details</a>
    {{Form::open(['action' => ['Customers@destroy',$pro->id], 'method' => 'DELETE'])}}
    {{Form::submit('Remove Customer',['class' => "btn btn-danger"])}}
    {{Form::close()}}
  </div>
</div>
@endsection
