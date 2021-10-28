@extends('showroom.wrappers.app')
@section('content')
  @if(!empty($allCust) && count($allCust) > 0)
  <div class="table-responsive">
  <table class="table table-hover">
    <caption>Total Customers Registered: {{count($allCust)}}</caption>
<thead>
<tr>
  <th>Name</th>
  <th>Email</th>
  <th>Phone</th>
</tr>
</thead>
<tbody>
    @foreach($allCust as $Custs)
    <tr>
      <td><p>{{$Custs->Name}}</p></td>
      <td><p><a href="mailto:{{$Custs->Email}}" target="_top">{{$Custs->Email}}</a></p></td>
      <td><p>{{$Custs->Phone}}</p></td>
      <td><a href="/cust/{{$Custs->id}}">View Profile</a></td>
    </tr>
      @endforeach
    </tbody>
    </table>
</div>
    @else
      <p>No Customer Found!: {{count($allCust)}}</p>
  @endif
@endsection
