@extends('layouts.master')
@section('title')
    OneSLA::Equipo {{ $equipo->nombre }}
@endsection
@section('content')
<p><h3>{{ $equipo->nombre }}</h3></p>
@if( isset($message) )
  <div class="alert alert-{{$message["type"]}}" role="alert">{{ $message["data"] }}</div>
@endif
<div class="row">
    <div class="col-sm-4">
        <p><h4><b>Equipo:</b> {{ $equipo->nombre }}</h4></p>
        <p><b>Código de Inventario:</b> {{ $equipo->codigo_interno }}</p>
        <p><b>Código de Cliente:</b> {{ $equipo->codigo_cliente }}</p>
        <p><b>Código Auxiliar:</b> {{ $equipo->codigo_auxiliar }}</p>
        <p><b>Marca:</b> {{ $equipo->marca }}</p>
        <p><b>Modelo:</b> {{ $equipo->modelo }}</p>
        <p><b>Serie:</b> {{ $equipo->serie }}</p>
        <p><b>Observaciones:</b> {{ $equipo->observaciones }}</p>
    </div>
    <div class="col-sm-8">
        <p><h4><b>Cliente:</b> {{ $equipo->instalacion->cliente->nombre }}</h4></p>
        <p><b>Instalación:</b> {{ $equipo->instalacion->cliente->nombre }}</p>
        <p><b>Tipo de Equipo:</b> {{ $equipo->tipo_equipo->nombre }}</p>
        <p><b>Descripción de tipo:</b> {{ $equipo->tipo_equipo->descripcion }}</p>
        <hr>
        <p><h4><b>Acciones:</b></h4></p>
        <a href="#" role="button" class="btn btn-success">Realizar nuevo Servicio</a>
        <a href="#" role="button" class="btn btn-primary">Ver Manuales y Documentos</a>
        <a href="#" role="button" class="btn btn-info">Ver Trabajos realizados</a>
        <a href="#" role="button" class="btn btn-danger">Dar de baja</a>
        


    </div>
</div>
@endsection