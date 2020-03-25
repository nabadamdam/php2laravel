<?php
namespace App\Models;

class Links{
    public function getLinks(){
        return \DB::table('navigacija')
        ->get();
    }
}