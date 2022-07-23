<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\HalamanUtamaController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::post('auth', [UserController::class, 'authenticate']);
Route::get('logout', [UserController::class, 'logout']);
Route::controller(HalamanUtamaController::class)->middleware('auth')->group(function () {
    Route::get('utama', 'index')->name('utama');
    Route::get('jurusan', 'jurusan');
    Route::get('tentang', 'tentang');
    Route::get('jurusan/{id}', 'mahasiswa_jurusan');
});
Route::controller(AdminController::class)->middleware('auth')->group(function () {
    Route::get('manajemen_jurusan', 'manajemen_jurusan');
    Route::get('manajemen_jurusan/edit/{id}', 'manajemen_jurusan_edit');
    Route::get('manajemen_jurusan/hapus/{id}', 'manajemen_jurusan_delete');
    Route::post('manajemen_jurusan/store', 'manajemen_jurusan_store');
    Route::post('manajemen_jurusan/update/{id}', 'manajemen_jurusan_update');

    Route::get('manajemen_mahasiswa', 'manajemen_mahasiswa');
    Route::get('manajemen_mahasiswa/hapus/{id}', 'manajemen_mahasiswa_delete');
    Route::get('manajemen_mahasiswa/edit/{id}', 'manajemen_mahasiswa_edit');
    Route::post('manajemen_mahasiswa/store', 'manajemen_mahasiswa_store');
    Route::post('manajemen_mahasiswa/update/{id}', 'manajemen_mahasiswa_update');
});
