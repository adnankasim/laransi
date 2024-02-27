<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Profil extends Model
{
    // Nama table tidak ikuti Convention Laravel
    protected $table = 'profil';

    // kolom tabel untuk Mass Assingment
    protected $fillable = [
        'nama_perusahaan', 'tanggal_berdiri', 'telepon', 'alamat_perusahaan', 'email'
    ];

    // Non-aktifkan Timestamp
    public $timestamps = false;
}
