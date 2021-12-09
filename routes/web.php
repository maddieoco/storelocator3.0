<?php

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


Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('main');
Route::post('/locate', [App\Http\Controllers\HomeController::class, 'locate'])->name('locate');
Route::get('/get-locations', [App\Http\Controllers\HomeController::class, 'getLocations'])->name('getLocations');

Route::get('login', [App\Http\Controllers\AuthController::class, 'loginView'])->name('login');
Route::post('signin', [App\Http\Controllers\AuthController::class, 'login'])->name('signin');
Route::post('logout', [App\Http\Controllers\AuthController::class, 'logout'])->name('logout');

// Auth::routes(['verify' => true] );
//route with auth middleware
Route::group(['middleware' => ['auth']], function () {
    Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'dashboard'])->name('dashboard');
    Route::resource('shop', ShopController::class);
});
Route::get('clear_cache', function () {
    \Artisan::call('cache:clear');

});

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

