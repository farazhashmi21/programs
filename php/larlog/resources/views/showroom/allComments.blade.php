@extends('showroom.wrappers.app')
@section('content')
  @if(!empty($commentsList))
    <table>
    <thead>
    <tr>
      <th>Comments</th>
    </tr>
    </thead>
    <tbody>
    @foreach($commentsList as $comment)
      <tr><td><p><a href="/comments/{{$comment->id}}">{{($comment->Comment)}}</a></p></td></tr>
    @endforeach
     </tbody>
    </table>
  @else
    <p>No COMMENT Found YET!</p>
  @endif
@endsection
