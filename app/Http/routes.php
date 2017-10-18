<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Route::get('/', function () {
//     return view('estate');
// });

/* ================== Homepage + Admin Routes ================== */

require __DIR__.'/admin_routes.php';


Route::get('/', function () {
    return view('index2');
});

Route::get('/galeri', function () {
    return view('gallery');
});

Route::get('/lokasi', function () {
    return view('vLocation');
});
