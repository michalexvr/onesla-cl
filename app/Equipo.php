<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Equipo extends Model
{
    //
    public $timestamps = false;
    
    public function tipo_equipo(){
        return $this->belongsTo("App\\TipoEquipo", "tipo_equipo_id", "id");
    }
    
    public function Instalacion(){
        return $this->belongsTo("App\Instalacion", "instalacion_id", "id");
    }
}
