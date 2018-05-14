<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Instalacion extends Model
{
    //
    protected $table = "instalaciones";
    public $timestamps = false;

    public function cliente(){
        return $this->belongsTo("App\Cliente", "cliente_id", "id");
    }
}
