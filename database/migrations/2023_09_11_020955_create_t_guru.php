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
        Schema::create('t_guru', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama_guru' , 50);
            $table->integer('nip')->lenght(11);
            $table->enum('jenis_kelamin', ['L','P']);
            $table->string('alamat', 50);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('t_guru');
    }
};
