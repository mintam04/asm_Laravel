<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreLoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'user' => 'array|required_array_keys:email,password',
            'user.email' => 'required',
            'user.password' => 'required|string|min:8',
        ];
    }
    public function attributes() {
        return [
            'user.email' => 'user email',
            'user.password' => 'user password',

        ];
    }
}
