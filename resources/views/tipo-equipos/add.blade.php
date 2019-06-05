@extends('layouts.master')
@section('title')
    OneSLA :: Nuevo Tipo de Equipo
@endsection
@section('scripts')
<script>
    //pendiente-se debe hacer control de que los datos sean consistentes.
</script>
@endsection
@section('content')
<p><h3>Nuevo Tipo de Equipo</h3></p>
  <!-- Form -->
  <form action="{{url('tipo-equipos/add')}}" method="POST">
   {{csrf_field()}}
   <div class="form-group row">
      <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ventilacion">
      </div>
    </div>
    <div class="form-group row">
      <label for="descripcion" class="col-sm-2 col-form-label">Descripción</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="Equipos ventiladores">
      </div>
    </div>
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Añadir</button>
      </div>
    </div>
  </form>
@endsection