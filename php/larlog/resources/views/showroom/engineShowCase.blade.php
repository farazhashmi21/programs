@extends('showroom.wrappers.app')
@section('content')
  @if(count($allEngines) > 0)
    @foreach($allEngines as $listEngines)
      <div class="card">
        <h3><a href="/engines/{{$listEngines->id}}">Engine Manufacturing: {{$listEngines->ManufacturingYear}}</a></h3>
        <div class="card-body">
          <ul class="list-group">
            <li class="list-group-item">Engine No: {{$listEngines->EngineNo}}</li>
            <li class="list-group-item">Chassi No: {{$listEngines->ChassiNo}}</li>
          </ul>
        </div>
      </div>
        @endforeach
        @endif
      </div>
@endsection
