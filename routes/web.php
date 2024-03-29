<?php

use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\PractitionerController;

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
Route::get('/', [WelcomeController::class, 'homepage'])->name('homepage');

// Practitioner
Route::get('/practitioner/set-working-time', [PractitionerController::class, 'setWorkingTime'])->name('setWorkingTime');

Route::get('/clear', function() {
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('config:clear');
    Artisan::call('view:clear');
    return "Cache is cleared";
});


// require __DIR__.'/auth.php';