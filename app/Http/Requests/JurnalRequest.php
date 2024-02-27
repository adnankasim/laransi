<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class JurnalRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'keterangan' => 'required|string|max:255',
            'waktu_transaksi' => 'required|date',
            'nominal' => 'required|integer',
            'tipe' => 'required|in:d,k',
            'id_akun' => 'required|max:10',
        ];
    }
}
