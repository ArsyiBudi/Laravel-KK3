<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SiswaControllers;
use App\Http\Controllers\SiswaController;
use App\http\Controllers\KelasContoller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



// studi kasus 1 sesi 24
Route::get('/kelas24', [KelasContoller::class, 'indexx1']);

Route::get('/belajar2', [SiswaController::class, 'indexx']);

Route::get('/web', [SiswaController::class, 'index1']);

Route::get('/smkn4bandung', [SiswaController::class, 'index2']);

Route::get('/kk3', [SiswaController::class, 'index3']);


// studi kasus 2 sesi 24
Route::get('/belajar/create', [siswaController::class, 'create']);

Route::post('/belajar', [siswaController::class, 'store']);

Route::get('/belajar', [SiswaController::class, 'index']);


// studi kasus 1 sesi 25

Route::get('/kelas24/create', [KelasContoller::class, 'create']);

Route::post('/kelas24', [KelasContoller::class, 'store']);

// sesi 26

Route::get('/belajar/{id}/edit', [SiswaController::class, 'edit']);

Route::patch('/belajar/{id}', [SiswaController::class, 'update']);

Route::delete('/belajar/{id}', [SiswaController::class, 'destroy']);


// sesi 26 studi kasus 1

Route::get('/kelas24/{id}/edit', [KelasContoller::class, 'edit']);

Route::patch('/kelas24/{id}', [KelasContoller::class, 'update']);

Route::delete('/kelas24/{id}', [KelasContoller::class, 'destroy']);