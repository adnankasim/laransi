<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProfilTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $profil = [
            'nama_perusahaan' => 'PT. SATYA TEKNOLOGI INDONESIA', 'tanggal_berdiri' => '2018-03-21',
            'telepon' => '082293427693', 'alamat_perusahaan' => 'Jl. Sepanjang Jalan Kenangan',
            'email' => 'satyateknologiindonesia@gmail.com'
        ];

        DB::table('profil')->insert($profil);

        $this->command->info('Berhasil Menambahkan 1 Profil Perusahaan');
    }
}
