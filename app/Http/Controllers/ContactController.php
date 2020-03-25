<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContactController extends FrontController
{
    public function index(){
        try{
            return view("pages/contact",$this->data);
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with load page contact!");
            \Log::error($ex->getMessage());
        } 
       
    }
  
}
