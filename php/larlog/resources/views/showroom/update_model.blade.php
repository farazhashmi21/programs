@extend('showroom.wrappers.app')
@section('content')
{{Form::open(['action' => 'ListsController@update'])}}
<div class="form-group">
  {{Form::label('Model','Model')}}
  {{Form::text('Model','',['class' => 'form-control'])}}
</div>
{{Form::close()}}
@endsection