<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TipoControl;
use App\Control;

class ControlesController extends Controller
{
    //
    public function getList($message = null){
        $controles = Control::All();
        return view("controles.list",Array("controles"=>$controles,"message"=>$message));
    }
    
    public function addControl(){
        $tipos_controles = TipoControl::All();
        return view("controles.add",Array("tipo_controles"=>$tipos_controles));
    }
    
    public function insertControl(Request $request){
        $control = new Control();
        $control->label = $request->input('label');
        $control->tipo_control_id = $request->input('tipo_control_id');
        $control->es_requerido = $request->input('es_requerido');
        $control->html = $request->input('html');
        
        $message = array("data"=>"El Control se inserto OK", "type"=>"success");
        
        try{
            $control->save();
        }catch(\Illuminate\Database\QueryException $ex){
           $message = array("data"=>"Error al intentar ingresar los datos, puede que el control ya exista", "type"=>"danger");
        }
        return $this->getList($message);        
    }
    
}
