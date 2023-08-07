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
        Schema::connection('studikasus2')->dropIfExists('t_kelas');

    Schema::connection('db_belajarlaravel')->create('t_kelas', function (Blueprint $table) {
        // Definisikan skema tabel t_kelas di sini
    });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('t_kelas', function (Blueprint $table) {
            //
        });
    }
};
