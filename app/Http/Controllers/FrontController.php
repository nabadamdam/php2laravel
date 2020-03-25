<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Links;

class FrontController extends Controller
{
    protected $data = [];

    public function  __construct(){
        $model = new Links();
        $links = $model->getLinks();
        $this->data['links'] = $links;
    }
}
