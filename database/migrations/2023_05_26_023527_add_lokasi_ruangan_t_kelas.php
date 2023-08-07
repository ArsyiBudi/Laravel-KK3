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
        //
        Schema::table('t_kelas', function($table) {
            $table->String('lokasi_tujuan' , 50)-> after('nama_jurusan');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::table('t_kelas', function($table) {
            $table->dropColumn('lokasi_tujuan');
        });
    }
};
