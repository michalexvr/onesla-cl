@extends('layouts.master')
@section('title')
    OneSLA :: Nuevo Equipo
@endsection
@section('scripts')
<script>
    //pendiente-se debe hacer control de que los datos sean consistentes.
</script>
@endsection
@section('content')
<p><h3>Nuevo Equipo</h3></p>
  <!-- Form -->
  <form action="{{url('equipos/add')}}" method="POST">
   {{csrf_field()}}
   <div class="form-group row">
      <label for="tipo_equipo" class="col-sm-2 col-form-label">Tipo Equipo</label>
      <div class="col-sm-10">
        <select name="tipo_equipo_id" class="form-control">
        @foreach($tipo_equipos as $tipo_equipo)
            <option value="{{ $tipo_equipo->id }}">{{ $tipo_equipo->nombre }}</option>
        @endforeach
        </select>
      </div>
   </div>
   <div class="form-group row">
      <label for="instalacion" class="col-sm-2 col-form-label">Instalación</label>
      <div class="col-sm-10">
        <select name="instalacion_id" class="form-control">
        @foreach($instalaciones as $instalacion)
            <option value="{{ $instalacion->id }}">{{ $instalacion->direccion }}</option>
        @endforeach
        </select>
      </div>
   </div>
   <div class="form-group row">
      <label for="codigo_interno" class="col-sm-2 col-form-label">Código Inventario</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="codigo_interno" name="codigo_interno" placeholder="CC-111">
      </div>
   </div>
   <div class="form-group row">
      <label for="codigo_cliente" class="col-sm-2 col-form-label">Código Cliente</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="codigo_cliente" name="codigo_cliente" placeholder="CC-111">
      </div>
   </div>
   <div class="form-group row">
      <label for="codigo_auxiliar" class="col-sm-2 col-form-label">Código Interno</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="codigo_auxiliar" name="codigo_auxiliar" placeholder="CC-111 (opcional)">
      </div>
   </div>
   <div class="form-group row">
      <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Calefactor">
      </div>
   </div>
   <div class="form-group row">
      <label for="descripcion" class="col-sm-2 col-form-label">Descripción</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="Calefactor de agua">
      </div>
   </div>
   <div class="form-group row">
      <label for="marca" class="col-sm-2 col-form-label">Marca</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="marca" name="marca" placeholder="Mitsubishi">
      </div>
   </div>
   <div class="form-group row">
      <label for="modelo" class="col-sm-2 col-form-label">Modelo</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="modelo" name="modelo" placeholder="F-400">
      </div>
   </div>
   <div class="form-group row">
      <label for="serie" class="col-sm-2 col-form-label">Número de Serie</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="serie" name="serie" placeholder="Calefactor de agua">
      </div>
   </div>
   <div class="form-group row">
      <label for="observaciones" class="col-sm-2 col-form-label">Observaciones</label>
      <div class="col-sm-10">
          <textarea class="form-control" id="observaciones" name="observaciones" placeholder="Ej: Equipo no debe manipularse energizado" rows="5"></textarea>
      </div>
   </div>
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Añadir</button>
      </div>
    </div>
  </form>
@endsection