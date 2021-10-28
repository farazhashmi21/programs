@extends('showroom.wrappers.app')
@section('content')
{{Form::open(['action' => ['ListsController@update',$eM->id], 'method' => 'PUT'])}}
<div class="form-group">
{{Form::label('make',"Make")}}
{{Form::text('make',$eM->Make,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::label('model',"Model")}}
{{Form::text('model',$eM->Model,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::label('year',"Year")}}
{{Form::number('year',$eM->Year,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::label('description',"Description")}}
{{Form::textarea('description',$eM->Description,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::label('image',"Make")}}
{{Form::text('image',$eM->Image,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::submit('Edit',['class' => 'btn btn-warning'])}}
{{Form::button('Clear',['class' => 'btn btn-primary'])}}
</div>
{{Form::close()}}
@endsection