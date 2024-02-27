<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Jurnal extends Model
{
    // nama table tidak mengikuti konvensi laravel
    protected $table = 'jurnal';

    // Non-aktifkan Timestamp
    public $timestamps = false;

    // kolom tabel untuk Mass Assingment
    protected $fillable = ['keterangan', 'waktu_transaksi', 'nominal', 'tipe', 'id_akun'];

    // kolom akan disembunyikan dalam array
    protected $hidden = [''];

    // Relasi N-1 antara akun dengan jurnal
    public function akun(){
        return $this->belongsTo(Akun::class, 'id_akun');
    }

}
