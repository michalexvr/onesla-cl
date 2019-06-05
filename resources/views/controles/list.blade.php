@extends('layouts.master')
@section('title')
    OneSLA::Controles
@endsection
@section('content')
<p><h3>Controles [<a href="{{ url('controles/add') }}">Añadir</a>]</h3></p>
@if( isset($message) )
  <div class="alert alert-{{$message["type"]}}" role="alert">{{ $message["data"] }}</div>
@endif
  <!-- Table -->
  <table class="table table-responsive">
      <thead>
          <tr>
              <th>Id</th>
              <th>Label</th>
              <th>Tipo de Control</th>
              <th>Es Requerido ?</th>
              <th>Html</th>
          </tr>
      </thead>
      <tbody>
          @if( count($controles) === 0)
          <tr>
              <td colspan="6">
                  No hay Controles registrados en el sistema.
              </td>
          </tr>
          @else
            @foreach($controles as $control)
            <tr>
                <td>
                    {{ $control->id }}
                </td>
                <td>
                    {{ $control->label }}
                </td>
                <td>
                    {{ $control->tipo_control->nombre }}
                </td>
                <td>
                    {{ $control->html }}
                </td>
            </tr>
            @endforeach
          @endif
      </tbody>
  </table>
@endsection