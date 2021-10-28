@extends('showroom.wrappers.app')
@section('content')
{{Form::open(['action' => ['EngineConfigurations@update',$eng->id],'method' => 'PUT'])}}
<div class="form-group">
{{Form::label('engine_no','Engine No')}}
{{Form::text('engine_no',$eng->EngineNo,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::label('chassi_no','Chassi No')}}
{{Form::text('chassi_no',$eng->ChassiNo,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::label('manufacturing_year','Manufacturin Year')}}
{{Form::text('manufacturing_year',$eng->ManufacturingYear,['class' => 'form-controll'])}}
</div>
<div class="form-group">
{{Form::submit('Edit Engine',['class' => 'btn btn-primary'])}}
{{Form::reset('Clear',['class' => 'btn btn-danger'])}}
</div>
{{Form::close()}}
<div class="form-group">
<a class = "btn btn-dark" href="/engines">Cancel</a>
</div>
@endsection