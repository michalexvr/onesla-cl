<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Equipo;
use App\TipoEquipo;
use App\Instalacion;

class EquiposController extends Controller
{
    //
    public function getList($message = null)
    {
        $equipos = Equipo::All();
        
        return view("equipos.list",Array("equipos"=>$equipos,"message"=>$message));
    }
    
    public function addEquipo(){
        $tipos_equipos = TipoEquipo::All();
        $instalaciones = Instalacion::All();
        return view("equipos.add",Array("tipo_equipos"=>$tipos_equipos,"instalaciones"=>$instalaciones));
    }

    public function insertEquipo(Request $request){
        $equipo = new Equipo();
        
        $equipo->tipo_equipo_id = $request->input("tipo_equipo_id");
        $equipo->instalacion_id = $request->input("instalacion_id");
        $equipo->codigo_cliente = $request->input("codigo_cliente");
        $equipo->codigo_interno = $request->input("codigo_interno");
        $equipo->codigo_auxiliar = $request->input("codigo_auxiliar");
        $equipo->nombre = $request->input("nombre");
        $equipo->descripcion = $request->input("descripcion");
        $equipo->marca = $request->input("marca");
        $equipo->modelo = $request->input("modelo");
        $equipo->serie = $request->input("serie");
        $equipo->observaciones = $request->input("observaciones");

        $message = array("data"=>"Equipo inserto OK", "type"=>"success");
        try{
            $equipo->save();
        }catch(\Illuminate\Database\QueryException $ex){
           $message = array("data"=>"Error al intentar ingresar los datos del equipo", "type"=>"danger");
        }
        return $this->getList($message);
    }
    
    public function getEquipo($id){
        $equipo = Equipo::findOrFail($id);
        return view("equipos.show",Array("equipo"=>$equipo));
    }
}