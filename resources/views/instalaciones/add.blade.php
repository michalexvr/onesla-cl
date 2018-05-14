@extends('layouts.master')
@section('title')
    OneSLA :: Nueva Instalación
@endsection
@section('scripts')
<script>
    //pendiente-se debe hacer control de que los datos sean consistentes.
</script>
@endsection
@section('content')
<p><h3>Nueva Instalación</h3></p>
  <!-- Form -->
  <form action="{{url('instalaciones/add')}}" method="POST">
   {{csrf_field()}}
   <div class="form-group row">
       <label for="cliente_id" class="col-sm-2 col-form-label">Cliente</label>
       <div class="col-sm-10">
           <select name="cliente_id" class="form-control">
           @foreach($clientes as $cliente)
            <option value="{{ $cliente->id }}">{{ $cliente->nombre }}</option>
           @endforeach
           </select>
       </div>
    </div>
    <div class="form-group row">
      <label for="direccion" class="col-sm-2 col-form-label">Direccion</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Calle 555, Oficina 55, Ciudad">
      </div>
    </div>
    <div class="form-group row">
      <label for="oficina" class="col-sm-2 col-form-label">Oficina</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="oficina" name="oficina" placeholder="Oficina">
      </div>
    </div>      
    <div class="form-group row">
      <label for="telefono" class="col-sm-2 col-form-label">Teléfono</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="telefono" name="telefono" placeholder="56223456789">
      </div>
    </div>
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Añadir</button>
      </div>
    </div>
  </form>
@endsection