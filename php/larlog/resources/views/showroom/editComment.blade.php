@extends('showroom.wrappers.app')
@section('content')
{{Form::open(['action' => ['Comments@update',$comment->id],'method' => 'PUT'])}}
<div class="form-group">
{{Form::label('user_comment', "Comment")}}
{{Form::textarea('user_comment',$comment->Comment,['class' => 'form-control'])}}
</div>
{{Form::submit('Edit',['class' => 'btn btn-primary'])}}
{{Form::reset('Cancel',['class' => 'btn btn-danger'])}}
{{Form::close()}}
<a href="/comments" class="btn btn-primary">Go Back</a>
@endsection