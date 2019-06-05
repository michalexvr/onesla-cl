@extends('layouts.master')
@section('title')
    OneSLA::Tipos de Equipos
@endsection
@section('content')
<p><h3>Tipos de Equipos [<a href="{{ url('tipo-equipos/add') }}">Añadir</a>]</h3></p>
@if( isset($message) )
  <div class="alert alert-{{$message["type"]}}" role="alert">{{ $message["data"] }}</div>
@endif
  <!-- Table -->
  <table class="table table-responsive">
      <thead>
          <tr>
              <th>Id</th>
              <th>Nombre</th>
              <th>Descripcion</th>
          </tr>
      </thead>
      <tbody>
          @if( count($tipo_equipos) === 0)
          <tr>
              <td colspan="6">
                  No hay Tipos de Equipo registrados en el sistema.
              </td>
          </tr>
          @else
            @foreach($tipo_equipos as $tipo_equipo)
            <tr>
                <td>
                    {{ $tipo_equipo->id }}
                </td>
                <td>
                    {{ $tipo_equipo->nombre }}
                </td>
                <td>
                    {{ $tipo_equipo->descripcion }}
                </td>
            </tr>
            @endforeach
          @endif
      </tbody>
  </table>
@endsection