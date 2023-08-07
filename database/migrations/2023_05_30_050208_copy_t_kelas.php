<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    DB::connection('studikasus2')->select('CREATE TABLE db_belajarlaravel.t_kelass LIKE studikasus2.t_kelas');
    DB::connection('studikasus2')->select('INSERT INTO db_belajarlaravel.t_kelass SELECT * FROM studikasus2.t_kelas');
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('t_kelass', function (Blueprint $table) {
            //
        });
    }
};
