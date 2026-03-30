<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TinController;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/tin/ds', [TinController::class, 'index']);
Route::get('/tin/them', [TinController::class, 'them']); 
Route::post('/tin/them', [TinController::class, 'them_']); 
Route::get('/tin/capnhat/{id}', [TinController::class, 'capnhat']);
Route::post('/tin/capnhat/{id}', [TinController::class, 'capnhat_']);