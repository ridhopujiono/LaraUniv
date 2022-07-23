<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    use HasFactory;

    // This method will help you to get complete table data as per need
    public function getJurusan()
    {
        return Jurusan::where('id', $this['jurusan_id'])->first();
    }

    // Accessor
    public function getJurusanAttribute()
    {
        return $this->getJurusan() ?? null;
    }
}
