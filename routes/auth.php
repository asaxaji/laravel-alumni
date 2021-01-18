<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\UserController;

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
    Route::resource('/users/profile', UserController::class)->names('users.profile');
});