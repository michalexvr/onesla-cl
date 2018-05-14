<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\List_mail;

class List_mailController extends Controller
{
    //
    public function addMail(Request $request){
        $mail = new List_mail();
        $mail->mail = $request->input('mail');
        $message = "Gracias!, has quedado suscrito, te mantendremos informado de las novedades.";
        try{
            $mail->save();
        }catch(\Illuminate\Database\QueryException $ex){
           $message = "El mail que has ingresado ya estaba registrado.";
        }
        return $message;

    }
}
