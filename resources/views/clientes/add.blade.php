@extends('layouts.master')
@section('title')
    OneSLA :: Nuevo Cliente
@endsection
@section('scripts')
<script>
    //pendiente-se debe hacer control de que los datos sean consistentes.
</script>
@endsection
@section('content')
<p><h3>Nuevo Cliente</h3></p>
  <!-- Form -->
  <form action="{{url('clientes/add')}}" method="POST">
   {{csrf_field()}}
   <div class="form-group row">
      <label for="rut" class="col-sm-2 col-form-label">Rut</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="rut" name="rut" placeholder="12345678-9">
      </div>
    </div>
    <div class="form-group row">
      <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Juan Perez Ltd">
      </div>
    </div>
    <div class="form-group row">
      <label for="direccion" class="col-sm-2 col-form-label">Direccion</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Calle 555, Oficina 55, Ciudad">
      </div>
    </div>
    <div class="form-group row">
      <label for="giro" class="col-sm-2 col-form-label">Giro</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="giro" name="giro" placeholder="Giro">
      </div>
    </div>      
    <div class="form-group row">
      <label for="telefono" class="col-sm-2 col-form-label">Teléfono</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="telefono" name="telefono" placeholder="56223456789">
      </div>
    </div>
    <div class="form-group row">
      <label for="mail" class="col-sm-2 col-form-label">Mail</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="mail" name="email" placeholder="alguien@ejemplo.com">
      </div>
    </div>
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Añadir</button>
      </div>
    </div>
  </form>
@endsection