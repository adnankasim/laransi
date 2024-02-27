<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAkunTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('akun', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama_akun', 100);
            $table->string('kode_akun', 5);
        });

        // Set Foreign Key
        Schema::table('jurnal', function(Blueprint $table){
            $table->foreign('id_akun')->references('id')->on('akun')->onDelete('cascade')->onUpdate('cascade');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('jurnal', function(Blueprint $table){
            $table->dropForeign('jurnal_id_akun_foreign');
        });

        Schema::dropIfExists('akun');
    }
}
