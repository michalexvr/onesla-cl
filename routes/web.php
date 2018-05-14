<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::post('post','List_mailController@addMail');

Route::get('login', function () {
    return view('auth.login');
});

Route::get('logout', function () {
    return "user-logout";
});

Route::get('clientes', 'ClientesController@getList');
Route::get('clientes/add', 'ClientesController@addCliente');
Route::post('clientes/add', 'ClientesController@insertCliente');

Route::get('equipos', 'EquiposController@list');

Route::get('equipos/show/{id}', function ($id) {
    return "mostrando equipo: ".$id;
});

Route::get('equipos/create', function () {
    return "crear equipo ";
});

Route::get('equipos/edit/{id}', function ($id) {
    return "editar equipo ".$id;
});

Route::get('web/{id}', function($id){
    echo "asdf -> ".$id;
});

Route::post('suscription', function(){
    echo "email suscrito!";
});
