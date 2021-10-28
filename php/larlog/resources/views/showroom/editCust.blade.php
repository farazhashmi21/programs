@extends('showroom.wrappers.app')
@section('content')
{{Form::open(['action' => ["Customers@update",$eCust->id],'method' => 'PUT'])}}
<div class="form-group">
{{Form::label('cname','Customer Name:')}}
{{Form::text('cname',$eCust->Name,['class' => 'form-control'])}}
</div>
<div class="form-group">
{{Form::label('cemail','Customer Email:')}}
{{Form::text('cemail',$eCust->Email,['class' => 'form-control'])}}
</div>
<div class="form-group">
{{Form::label('cphone','Customer Phone:')}}
{{Form::text('cphone',$eCust->Phone,['class' => 'form-control'])}}
</div>
<div class="form-group">
{{Form::label('cphoto','Customer Photo:')}}
{{Form::text('cphoto',$eCust->Image,['class' => 'form-control'])}}
</div>
<div class="form-group">
{{Form::submit('Edit',['class' => 'btn btn-primary', 'title' => 'Edit Button'])}}
{{Form::reset('Clear',['class' => 'btn btn-light','title' => 'Clear Form'])}}
</div>
{{Form::close()}}
@endsection