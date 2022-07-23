<?php

namespace Database\Seeders;

use App\Models\Mahasiswa;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MahasiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');

        for ($i = 1; $i <= 200; $i++) {

            // insert data ke table menggunakan Faker
            Mahasiswa::create([
                'nama' => $faker->name,
                'no_telp' => $faker->phoneNumber(),
                'npm' => "14122000" + $i,
                'jurusan_id' => $faker->numberBetween(1, 11),
                'alamat' => $faker->address
            ]);
        }
    }
}
