@extends('showroom.wrappers.app')
@section('content')
<table>
<thead>
<tr>
<th>ID</th>
<th>Comment</th>
<th>Comment Created</th>
<th>Comment Modified</th>
</thead>
<tbody>
<tr>
<td>{{($details->id)}}</td>
<td>{{($details->Comment)}}</td>
<td>{{($details->created_at)}}</td>
<td>{{($details->updated_at)}}</td>
</tr>
<tr>
<td><a href="{{($details->id)}}/edit/" class="btn btn-warning">Edit Comment</a></td>
<td><a href="/comments" class="btn btn-primary">Go Back</a></td>
<td>
{{Form::open(['action' => ['Comments@destroy',$details->id],'method' => 'DELETE'])}}
{{Form::submit('Remove Comment', ['class' => 'btn btn-danger'])}}
{{Form::close()}}
</td>
</tr>
</tbody>
</table>
@endsection
