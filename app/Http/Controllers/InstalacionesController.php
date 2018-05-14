<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cliente;
use App\Instalacion;

class InstalacionesController extends Controller
{
    //
      public function getList($message=null){
      $instalaciones = Instalacion::All();
      
      return view("instalaciones.list",Array("instalaciones"=>$instalaciones,"message"=>$message));
    }
    
    public function addInstalacion(){
        $clientes = Cliente::All();
        return view("instalaciones.add", Array("clientes"=>$clientes));
    }
    
    public function insertInstalacion(Request $request){
        $instalacion = new instalacion;
        $instalacion->cliente_id = $request->input('cliente_id');
        $instalacion->direccion = $request->input('direccion');
        $instalacion->oficina = $request->input('oficina');
        $instalacion->telefono = $request->input('telefono');
        $message = array("data"=>"Nueva instalación OK", "type"=>"success");

        try{
            $instalacion->save();
        }catch(\Illuminate\Database\QueryException $ex){
           $message = array("data"=>"Error al intentar ingresar los datos", "type"=>"danger");
        }
        return $this->getList($message);
    }
}