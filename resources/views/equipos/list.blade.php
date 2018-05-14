@extends('layouts.master')
@section('title')
    OneSLA::Equipos
@endsection
@section('content')
<p><h3>Equipos [<a href="{{ url('equipos/add') }}">Añadir</a>]</h3></p>
@if( isset($message) )
  <div class="alert alert-{{$message["type"]}}" role="alert">{{ $message["data"] }}</div>
@endif
  <!-- Table -->
  <table class="table table-responsive" >
      <thead>
          <tr>
              <th>Id</th>
              <th>Cod. de Inventario</th>
              <th>Cod. de Cliente</th>
              <th>Tipo de Equipo</th>
              <th>Instalación</th>
              <th>Nombre</th>
              <th>Marca</th>
              <th>Modelo</th>
              <th>Serie</th>
              <th>Acciones</th>
          </tr>
      </thead>
      <tbody>
          @if( count($equipos) === 0)
          <tr>
              <td colspan="6">
                  No hay Equipos registrados en el sistema.
              </td>
          </tr>
          @else
            @foreach($equipos as $equipo)
            <tr>
                <td>
                    {{ $equipo->id }}
                </td>
                <td>
                    {{ $equipo->codigo_interno }}
                </td>
                <td>
                    {{ $equipo->codigo_cliente }}
                </td>
                <td>
                    {{ $equipo->tipo_equipo->nombre }}
                </td>
                <td>
                    {{ $equipo->instalacion->direccion }}<!-- ACÁ VA LA INFO DE LA INSTALACIÓN!! -->
                </td>
                <td>
                    {{ $equipo->nombre }}
                </td>
                <td>
                    {{ $equipo->marca }}
                </td>
                <td>
                    {{ $equipo->modelo }}
                </td>
                <td>
                    {{ $equipo->serie }}
                </td>
                <td>
                    <ul class="nav">
                        <li style="margin-bottom: 2px;">
                            <a href="{{ url('equipos/show/'.$equipo->id) }}" role="button" class="btn btn-primary btn-sm">
                                <span class="glyphicon glyphicon-eye-open" alt="ver"></span>Ver
                            </a>
                        </li>
                        <li>
                            <a href="{{ url('equipos/edit/'.$equipo->id) }}" role="button" class="btn btn-info btn-sm">
                                <span class="glyphicon glyphicon-pencil" alt="editar"></span>Editar</a>
                        </li>
                    </ul>
                </td>                
            </tr>
            @endforeach
          @endif
      </tbody>
  </table>
@endsection