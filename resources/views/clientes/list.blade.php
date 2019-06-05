@extends('layouts.master')
@section('title')
    OneSLA::Clientes
@endsection
@section('content')
<p><h3>Clientes [<a href="{{ url('clientes/add') }}">Añadir</a>]</h3></p>
@if( isset($message) )
  <div class="alert alert-{{$message["type"]}}" role="alert">{{ $message["data"] }}</div>
@endif
  <!-- Table -->
  <table class="table table-responsive">
      <thead>
          <tr>
              <th>Id</th>
              <th>Rut</th>
              <th>Nombre</th>
              <th>Giro</th>
              <th>Dirección</th>
              <th>Telefono</th>
              <th>Mail</th>
          </tr>
      </thead>
      <tbody>
          @if( count($clientes) === 0)
          <tr>
              <td colspan="6">
                  No hay clientes registrados en el sistema.
              </td>
          </tr>
          @else
            @foreach($clientes as $cliente)
            <tr>
                <td>
                    {{ $cliente->id }}
                </td>
                <td>
                    {{ $cliente->rut }}
                </td>
                <td>
                    {{ $cliente->nombre }}
                </td>
                <td>
                    {{ $cliente->giro }}
                </td>
                <td>
                    {{ $cliente->direccion }}
                </td>
                <td>
                    {{ $cliente->telefono }}
                </td>
                <td>
                    {{ $cliente->email }}
                </td>
            </tr>
            @endforeach
          @endif
      </tbody>
  </table>
@endsection