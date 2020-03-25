<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class productRequest extends FormRequest
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
            "name" => "required",
            "picsrc" => "required|mimes:jpg,jpeg,gif,png|max:3000",
            "picAlt" => "required",
            "desc" => "required",
            "price" => "required|numeric"
        ];
    }
    public function messages()
    {
        return [
            "required" => "This field is required!"
        ];
       
    }
}
