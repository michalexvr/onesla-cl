@extends('layouts.master')
@section('title')
    OneSLA :: Error 404 
@endsection
@section('content')
<p><h3>
    <div align="center">
        Lo sentimos, la dirección solicitada no fue encontrada o aun no ha sido implementada <br><br>
        [<a href="{{ url("/") }}">Ir al inicio</a>] [<a href="javascript:history.back()">Volver</a>].</div>
</h3></p>
@endsection