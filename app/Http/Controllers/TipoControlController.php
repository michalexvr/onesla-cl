<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TipoControl;

class TipoControlController extends Controller
{
    //
    public function getList($message = null){
        $tipo_controles = TipoControl::All();
        //dd($tipo_controles);
        return view("tipo-controles.list",Array("tipo_controles"=>$tipo_controles,"message"=>$message));
    }
    
    public function addTipoControl(){
        return view("tipo-controles.add");
    }
    
    public function insertTipoControl(Request $request){
        $tipo_control = new TipoControl();
        $tipo_control->nombre = $request->input('nombre');
        $tipo_control->descripcion = $request->input('descripcion');
        $tipo_control->expresion_regular = $request->input('expresion_regular');
        $tipo_control->altura = $request->input('altura');
        $tipo_control->ancho = $request->input('ancho');
        $tipo_control->opciones = $request->input('opciones');
        $tipo_control->altura_default = $request->input('altura_default');
        $tipo_control->ancho_default = $request->input('ancho_default');
        
        $message = array("data"=>"Tipo Control se inserto OK", "type"=>"success");
        
        try{
            $tipo_control->save();
        }catch(\Illuminate\Database\QueryException $ex){
           $message = array("data"=>"Error al intentar ingresar los datos, pueda que el tipo control ya exista", "type"=>"danger");
        }
        return $this->getList($message);        
    }
    
}
