<?php

use App\Http\Controllers\TinController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [TinController::class, 'trangChu'])->name('trangChu');

Route::get('/tin-chi-tiet/{id}', [TinController::class, 'tinChiTiet'])->name('tinChiTiet');

Route::get('/tin-trong-loai/{id}', [TinController::class, 'tinTrongLoai'])->name('tinTrongLoai');

Route::get('/search', [TinController::class, 'search'])->name('search');


