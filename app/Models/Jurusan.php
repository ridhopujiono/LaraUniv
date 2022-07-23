<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jurusan extends Model
{
    use HasFactory;

    protected $fillable = ['nama_jurusan', 'foto'];

    public function getJumlah()
    {
        return Mahasiswa::where('jurusan_id', $this['id'])->count();
    }

    // Accessor
    public function getJumlahAttribute()
    {
        return $this->getJumlah() ?? null;
    }
}
