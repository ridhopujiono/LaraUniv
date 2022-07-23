<?php

namespace Database\Seeders;

use App\Models\Jurusan;
use Illuminate\Database\Seeder;

class JurusanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $jurusan = [
            'Teknik Informatika', 'Teknik Industri', 'Matematika', 'Bahasa Inggris', 'Biologi', 'Fisika', 'Bahasa Indonesia', 'Sastra', 'Seni Rupa', 'Sistem Informasi', 'Agrobisnis'
        ];

        for ($i = 0; $i < count($jurusan); $i++) {
            Jurusan::create([
                "nama_jurusan" => $jurusan[$i]
            ]);
        }
    }
}
