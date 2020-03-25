<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthorController extends FrontController
{
    public function index(){
        try{
            return view("pages/author",$this->data);
        }
        catch(\Exception $ex){
            return \redirect("/")->with("message","Error with load page author!");
            \Log::error($ex->getMessage());
        } 
    }
}
