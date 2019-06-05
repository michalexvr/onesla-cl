@extends('layouts.master')
@section('title')
    OneSLA::Instalaciones
@endsection
@section('content')
<p><h3>Instalaciones [<a href="{{ url('instalaciones/add') }}">Añadir</a>]</h3></p>
@if( isset($message) )
  <div class="alert alert-{{$message["type"]}}" role="alert">{{ $message["data"] }}</div>
@endif
  <!-- Table -->
  <table class="table table-responsive">
      <thead>
          <tr>
              <th>Id</th>
              <th>Cliente</th>
              <th>Direccion</th>
              <th>Oficina</th>
              <th>Telefono</th>
          </tr>
      </thead>
      <tbody>
          @if( count($instalaciones) === 0)
          <tr>
              <td colspan="6">
                  No hay instalaciones registradas en el sistema.
              </td>
          </tr>
          @else
            @foreach($instalaciones as $instalacion)
            <tr>
                <td>
                    {{ $instalacion->id }}
                </td>                
                <td>
                    {{ $instalacion->cliente->nombre }}
                </td>
                <td>
                    {{ $instalacion->direccion }}
                </td>
                <td>
                    {{ $instalacion->oficina }}
                </td>
                <td>
                    {{ $instalacion->telefono }}
                </td>
            </tr>
            @endforeach
          @endif
      </tbody>
  </table>
@endsection