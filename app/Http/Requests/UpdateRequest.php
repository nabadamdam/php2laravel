<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "Name" => ["required" , "regex:/^([A-Z][a-z]{2,11})+$/"],
            "Surname" => ["required" , "regex:/^([A-Z][a-z]{2,15})+$/"],
            "Email" => "required|email",
            "Username" => ["required" , "regex:/^[A-z]{4,16}[\d]+$/"],
            "idUsr" => "required" 
         ];
    }
    public function message(){
        return [
            "required" => "Field is required!"
        ];
    }
}
