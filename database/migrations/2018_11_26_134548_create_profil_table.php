<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProfilTable extends Migration
{
    public function up()
    {
        Schema::create('profil', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama_perusahaan', 200);
            $table->date('tanggal_berdiri');
            $table->string('telepon', 15);
            $table->string('alamat_perusahaan', 255);
            $table->string('email', 100);
        });
    }

    public function down()
    {
        Schema::dropIfExists('profil');
    }
}
