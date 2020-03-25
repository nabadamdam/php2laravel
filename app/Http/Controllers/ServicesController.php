<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ServicesController extends FrontController
{
    public function index(){
        try{
            return view("pages/service",$this->data);
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with load page service!");
            \Log::error($ex->getMessage());
        } 
    }
}
