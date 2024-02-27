<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AkunTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $akun = [
            ['nama_akun' => 'Kas', 'kode_akun' => '110'],
            ['nama_akun' => 'Piutang Usaha', 'kode_akun' => '120'],
            ['nama_akun' => 'Peralatan Usaha', 'kode_akun' => '140'],
            ['nama_akun' => 'Bangunan', 'kode_akun' => '150'],
            ['nama_akun' => 'Tanah', 'kode_akun' => '160'],
            ['nama_akun' => 'Utang Usaha', 'kode_akun' => '210'],
            ['nama_akun' => 'Utang Bank', 'kode_akun' => '230'],
            ['nama_akun' => 'Modal Saham', 'kode_akun' => '310'],
            ['nama_akun' => 'Pendapatan', 'kode_akun' => '510'],
            ['nama_akun' => 'Gaji & Upah', 'kode_akun' => '410'],
            ['nama_akun' => 'Utilities (Listrik, Air, & Gas)', 'kode_akun' => '420'],
            ['nama_akun' => 'Bunga Bank', 'kode_akun' => '430'],
            ['nama_akun' => 'Dividen', 'kode_akun' => '440'],
        ];

        DB::table('akun')->insert($akun);

        $this->command->info('Berhasil Menambahkan Beberapa Akun');
    }
}
