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
            'nama_perusahaan' => 'PT. ABADI SINGAPAY INDONESIA', 
            'tanggal_berdiri' => '2023-07-01',
            'telepon' => '+62 21389 29036', 
            'alamat_perusahaan' => 'BSD Foresta 5 Unit 30, Tangerang Kabupaten',
            'email' => 'info@singapay.id'
        ];

        DB::table('profil')->insert($profil);

        $this->command->info('Berhasil Menambahkan 1 Profil Perusahaan');
    }
}
