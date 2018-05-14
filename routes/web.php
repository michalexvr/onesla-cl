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

Route::get('instalaciones', 'InstalacionesController@getList');
Route::get('instalaciones/add', 'InstalacionesController@addInstalacion');
Route::post('instalaciones/add', 'InstalacionesController@insertInstalacion');

Route::get('equipos', 'EquiposController@getList');
Route::get('equipos/show/{id}', 'EquiposController@getEquipo');
Route::get('equipos/add', 'EquiposController@addEquipo');
Route::post('equipos/add', 'EquiposController@insertEquipo');

Route::get('tipo-equipos', 'TipoEquipoController@getList');
Route::get('tipo-equipos/show/{id}', 'TipoEquipoController@getTipoEquipo');
Route::get('tipo-equipos/add', 'TipoEquipoController@addTipoEquipo');
Route::post('tipo-equipos/add', 'TipoEquipoController@insertTipoEquipo');

Route::get('tipo-controles', 'TipoControlController@getList');
Route::get('tipo-controles/show/{id}', 'TipoControlController@getTipoControl');
Route::get('tipo-controles/add', 'TipoControlController@addTipoControl');
Route::post('tipo-controles/add', 'TipoControlController@insertTipoControl');

Route::get('controles', 'ControlesController@getList');
Route::get('controles/show/{id}', 'ControlesController@getControl');
Route::get('controles/add', 'ControlesController@addControl');
Route::post('controles/add', 'ControlesController@insertControl');


/*Route::get('equipos/show/{id}', function ($id) {
    return "mostrando equipo: ".$id;
});
Route::get('equipos/create', function () {
    return "crear equipo ";
});
*/

Route::get('equipos/edit/{id}', function ($id) {
    return view("errors");
    //return "editar equipo ".$id;
});

Route::get('web/{id}', function($id){
    echo "asdf -> ".$id;
});

Route::post('suscription', function(){
    echo "email suscrito!";
});
