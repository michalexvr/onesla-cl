<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TipoEquipo;

class TipoEquipoController extends Controller
{
    //
    public function getList($message = null){
        $tipo_equipos = TipoEquipo::All();
        return view("tipo-equipos.list",Array("tipo_equipos"=>$tipo_equipos,"message"=>$message));
    }
    
    public function addTipoEquipo(){
        return view("tipo-equipos.add");
    }
    
    public function insertTipoEquipo(Request $request){
        $tipo_equipo = new TipoEquipo;
        $tipo_equipo->nombre = $request->input('nombre');
        $tipo_equipo->descripcion = $request->input('descripcion');
        $message = array("data"=>"Tipo Equipo se inserto OK", "type"=>"success");
        
        try{
            $tipo_equipo->save();
        }catch(\Illuminate\Database\QueryException $ex){
           $message = array("data"=>"Error al intentar ingresar los datos, pueda que el cliente ya exista", "type"=>"danger");
        }
        return $this->getList($message);        
    }
    
}
