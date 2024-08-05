<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\LoaiTinController;
use App\Http\Controllers\TinController;
use App\Models\User;
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

Route::prefix('admin')
    ->name('admin.')
    ->group(function () {
        Route::prefix('tin')
            ->name('tin.')
            ->controller(ArticleController::class)
            ->group(function () {
                Route::get('/', 'index')->name('index');

                Route::get('create', 'create')->name('create');
                Route::post('store', 'store')->name('store');

                Route::get('{id}', 'show')->name('show');

                Route::get('{id}/edit', 'edit')->name('edit');
                Route::put('{id}', 'update')->name('update');

                Route::delete('{id}', 'destroy')->name('destroy');
            });
        Route::prefix('loaiTin')
            ->name('loaiTin.')
            ->controller(CategoryController::class)
            ->group(function () {
                Route::get('/', 'index')->name('index');

                Route::get('create', 'create')->name('create');
                Route::post('store', 'store')->name('store');

                Route::get('{id}', 'show')->name('show');

                Route::get('{id}/edit', 'edit')->name('edit');
                Route::put('{id}', 'update')->name('update');

                Route::delete('{id}', 'destroy')->name('destroy');
            });
    });


Route::get('/register', [UserController::class, 'register'])->name('register');
Route::post('/register', [UserController::class, 'registerStore'])->name('register.store');

Route::get('/login', [UserController::class, 'login'])->name('login');
Route::post('/login', [UserController::class, 'loginStore'])->name('login.store');

Route::post('/logout', [UserController::class, 'logout'])->name('logout');


Route::middleware(['auth', 'isUser'])->group(function () {


});

Route::middleware(['auth', 'isAdmin'])->group(function () {

    Route::get('/trangChuAdmin', [TinController::class, 'trangChuAdmin'])->name('trangChuAdmin');
});
