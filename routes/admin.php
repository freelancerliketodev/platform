<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\PractitionerController;
use App\Http\Controllers\Admin\ContentController;
/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
*/

// Admin Auth
Route::get('/',[AuthController::class, 'getLogin'])->name('adminLogin');
Route::post('/login', [AuthController::class, 'postLogin'])->name('adminLoginPost');
Route::get('/logout', [AuthController::class, 'logout'])->name('adminLogout');

Route::group(['middleware' => 'adminauth'], function () {
	// Admin Dashboard
    Route::get('dashboard',[AdminController::class, 'dashboard'])->name('dashboard');

    // Practitioners
    Route::get('practitioners',[PractitionerController::class, 'index'])->name('adminPractitioners');
    Route::get('practitioners-data',[PractitionerController::class, 'data'])->name('practitionersData');
    Route::get('practitioners-edit',[PractitionerController::class, 'edit'])->name('practitionersEdit');
    Route::get('change-status',[PractitionerController::class, 'changeStatus'])->name('changeStatus');
    
    //Content
    Route::get('practices',[ContentController::class, 'indexPractices'])->name('adminPractices');
    Route::get('practices-data',[ContentController::class, 'dataPractices'])->name('adminDataPractices');
    Route::get('practices-publish',[ContentController::class, 'publishPractices'])->name('adminPracticesPublish');
    Route::get('practices-get',[ContentController::class, 'getPractices'])->name('adminPracticesGet');

    // Admin profile
    Route::get('profile',[AdminController::class, 'profile'])->name('adminProfile');
    Route::post('save-profile',[AuthController::class, 'saveProfile'])->name('adminSaveProfile'); 
    Route::post('change-password',[AuthController::class, 'changePassword'])->name('adminChangePassword');
});