<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::connection('db_belajarlaravel')->create('t_kelas', function (Blueprint $table) {
            $table->id();
            $table->string('nama_kelas');
            $table->string('nama_jurusan');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::connection('database_baru')->create('t_kelas', function (Blueprint $table) {
            // Definisikan skema tabel t_kelas di sini
        });
    }
};
