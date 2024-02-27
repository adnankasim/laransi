<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProfilRequest extends FormRequest
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
            'nama_perusahaan' => 'required|string|max:100',
            'tanggal_berdiri' => 'required|date',
            'telepon' => 'required|string|max:15',
            'alamat_perusahaan' => 'required|string|max:255',
            'email' => 'required|string|max:100',
        ];
    }
}
