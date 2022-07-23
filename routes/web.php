<?php

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
Route::controller(HalamanUtamaController::class)->middleware('auth')->group(function () {
    Route::get('utama', 'index')->name('utama');
});