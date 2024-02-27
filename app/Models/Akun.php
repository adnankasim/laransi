<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Akun extends Model
{
    // Nama table tidak ikuti Convention Laravel
    protected $table = 'akun';

    // kolom tabel untuk Mass Assingment
    protected $fillable = ['nama_akun', 'kode_akun'];

    // relasi 1-N dengan Jurnal
    public function jurnal(){
        return $this->hasMany(Jurnal::class, 'id_akun');
    }

    // Non-aktifkan Timestamp
    public $timestamps = false;
}
