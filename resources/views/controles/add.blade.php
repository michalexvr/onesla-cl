@extends('layouts.master')
@section('title')
    OneSLA :: Nuevo Control
@endsection
@section('scripts')
<script>
    //pendiente-se debe hacer control de que los datos sean consistentes.
</script>
@endsection
@section('content')
<p><h3>Nuevo Control</h3></p>
  <!-- Form -->
  <form action="{{url('controles/add')}}" method="POST">
   {{csrf_field()}}
   <div class="form-group row">
      <label for="label" class="col-sm-2 col-form-label">Label</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="label" name="label" placeholder="Fecha Ultima Mantención">
      </div>
   </div>
   <div class="form-group row">
      <label for="tipo_control" class="col-sm-2 col-form-label">Tipo Control</label>
      <div class="col-sm-10">
        <select name="tipo_control_id" class="form-control">
        @foreach($tipo_controles as $tipo_control)
            <option value="{{ $tipo_control->id }}">{{ $tipo_control->nombre }}</option>
        @endforeach
        </select>
      </div>
   </div>
   <div class="form-group row">
      <label for="altura" class="col-sm-2 col-form-label">Es Requerido ?</label>
      
      <input name="es_requerido" id="altura" value="true" type="radio"> Si
      <input name="es_requerido" id="altura" value="false" type="radio"> No
   </div>
   <div class="form-group row">
      <label for="html" class="col-sm-2 col-form-label">Html</label>
      <div class="col-sm-10">
          <textarea class="form-control" id="html" name="html" placeholder="Ingresa el código html del control" rows="5"></textarea>
      </div>
   </div>
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Añadir</button>
      </div>
    </div>
  </form>
@endsection