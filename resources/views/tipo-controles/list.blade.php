@extends('layouts.master')
@section('title')
    OneSLA::Tipos de Controles
@endsection
@section('content')
<p><h3>Tipos de Controles [<a href="{{ url('tipo-controles/add') }}">Añadir</a>]</h3></p>
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
              <th>Expresión Regular</th>
              <th>Tiene Altura ?</th>
              <th>Tiene Ancho ?</th>
              <th>Opciones</th>
              <th>Altura</th>
              <th>Ancho</th>
          </tr>
      </thead>
      <tbody>
          @if( count($tipo_controles) === 0)
          <tr>
              <td colspan="6">
                  No hay Tipos de Controles registrados en el sistema.
              </td>
          </tr>
          @else
            @foreach($tipo_controles as $tipo_control)
            <tr>
                <td>
                    {{ $tipo_control->id }}
                </td>
                <td>
                    {{ $tipo_control->nombre }}
                </td>
                <td>
                    {{ $tipo_control->descripcion }}
                </td>
                <td>
                    {{ $tipo_control->expresion_regular }}
                </td>
                <td>
                    {{ $tipo_control->opciones }}
                </td>
                <td>
                    {{ $tipo_control->altura }}
                </td>
                <td>
                    {{ $tipo_control->ancho }}
                </td>
                <td>
                    {{ $tipo_control->altura_default }}
                </td>
                <td>
                    {{ $tipo_control->ancho_default }}
                </td>
            </tr>
            @endforeach
          @endif
      </tbody>
  </table>
@endsection