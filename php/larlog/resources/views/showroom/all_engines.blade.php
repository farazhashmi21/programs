@extends('showroom.wrappers.app')
@section('content')
  {{Form::open(['action' => 'EngineConfigurations@store'])}}
  <div class="form-group">
    {{Form::label('engineno','Engine No:',['class' => '','title' => 'Engine No'])}}
    {{Form::text('engineno','',['class' => 'form-control','placeholder' => 'Enter Engine Number Here'])}}
</div>
  <div class="form-group">
    {{Form::label('chassino','Chassie No:',['class' => '','title' => 'Engine No'])}}
    {{Form::text('chassino','',['class' => 'form-control','placeholder' => 'Enter Chassi Number Here'])}}
</div>
<div class="form-group">
    {{Form::label('manufacturingyear','Manufacturing Year:',['class' => '','title' => 'Engine No'])}}
    {{Form::text('manufacturingyear','',['class' => 'form-control','placeholder' => 'Enter Year Of Manufacturing Here'])}}
</div>
<div class="form-group">
    {{Form::submit('Add Engine',['class' => 'btn btn-primary','title' => 'Engine No'])}}
    {{Form::button('Clear',['class' => 'btn btn-danger'])}}
</div>
  {{Form::close()}}
@endsection