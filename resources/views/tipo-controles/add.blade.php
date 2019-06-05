@extends('layouts.master')
@section('title')
    OneSLA :: Añadir Tipo de Control
@endsection
@section('scripts')
<script>
    //pendiente-se debe hacer control de que los datos sean consistentes.
</script>
@endsection
@section('content')
<p><h3>Añadir Tipo de Control</h3></p>
  <!-- Form -->
  <form action="{{url('tipo-controles/add')}}" method="POST">
   {{csrf_field()}}
   <div class="form-group row">
      <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ejemplo: Texbox Numérico">
      </div>
    </div>
    <div class="form-group row">
      <label for="descripcion" class="col-sm-2 col-form-label">Descripción</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="Ingrese una descripción">
      </div>
    </div>
   <div class="form-group row">
      <label for="expresion_regular" class="col-sm-2 col-form-label">Expresión Regular</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="expresion_regular" name="expresion_regular" placeholder="Ingrese una expresión regular">
      </div>
    </div>
   <div class="form-group row">
      <label for="altura" class="col-sm-2 col-form-label">Tiene Altura ?</label>
      
      <input name="altura" id="altura" value="true" type="radio"> Si
      <input name="altura" id="altura" value="false" type="radio"> No
   </div>
   
   <div class="form-group row">
      <label for="ancho" class="col-sm-2 col-form-label">Tiene Ancho ?</label>
      
      <input name="ancho" id="ancho" value="true" type="radio"> Si
      <input name="ancho" id="ancho" value="false" type="radio"> No
   </div>
   
   <div class="form-group row">
      <label for="altura_default" class="col-sm-2 col-form-label">Altura</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="altura_default" name="altura_default" placeholder="Ingrese la altura del control">
      </div>
   </div>
   
   <div class="form-group row">
      <label for="ancho_default" class="col-sm-2 col-form-label">Ancho</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="ancho_default" name="ancho_default" placeholder="Ingrese la anchura del control">
      </div>
   </div>
   
   
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Añadir</button>
      </div>
    </div>
  </form>
@endsection