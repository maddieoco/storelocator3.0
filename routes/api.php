<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/* Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
}); */

Route::group([

    'middleware' => 'api',
    'namespace' => '\App\Http\Controllers\App',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    // Route::post('refresh', 'AuthController@refresh');
    // Route::post('me', 'AuthController@me');
    Route::post('signup', 'AuthController@signup');

    Route::post('forgot/password', 'AuthController@sendResetLinkEmail');
    Route::post('update/password', 'AuthController@change_password')->middleware('jwt');
});

Route::group([

    'middleware' => 'api',
    'namespace' => '\App\Http\Controllers\App',

], function ($router) {

    // Event Categories
    Route::get('categories', 'DataController@categories');
    Route::get('menu', 'DataController@menu_items');

    Route::post('upload_data', 'DataController@upload');
});

// account APIs

Route::group([
    'middleware' => ['api','jwt','isEndUserAPI'],
    'namespace' => '\App\Http\Controllers\App\Account',
    'prefix' => 'account'
], function ($router) {
    Route::resource('address', 'AddressController');
    Route::resource('order', 'OrderController');
});