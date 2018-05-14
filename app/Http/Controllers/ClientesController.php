<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cliente;

class ClientesController extends Controller
{
    //

    public function getList($message=null){
      $clientes = Cliente::All();
      return view("clientes.list",Array("clientes"=>$clientes,"message"=>$message));
    }
    
    public function addCliente(){
        return view("clientes.add-cliente");
    }
    
    public function insertCliente(Request $request){
        $cliente = new Cliente;
        $cliente->rut = $request->input('rut');
        $cliente->nombre = $request->input('nombre');
        $cliente->direccion = $request->input('direccion');
        $cliente->giro = $request->input('giro');
        $cliente->telefono = $request->input('telefono');
        $cliente->mail = $request->input('mail');
        $message = array("data"=>"Cliente inserto OK", "type"=>"success");
        
        try{
            $cliente->save();
        }catch(\Illuminate\Database\QueryException $ex){
           $message = array("data"=>"Error al intentar ingresar los datos, pueda que el cliente ya exista", "type"=>"danger");
        }
        return $this->getList($message);
    }
}
