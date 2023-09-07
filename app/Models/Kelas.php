<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    public $table = 't_kelas';

    protected $fillable = [
        'nama_kelas','nama_Jurusan','nama_wali_kelas','lokasi_ruangan'
    ];

    public $timestamps = false;

    use HasFactory;
}
