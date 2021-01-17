<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\HomeController;
use App\Http\Controllers\Frontend\BlogController;
use App\Http\Controllers\Frontend\AlumniController;
use App\Http\Controllers\Frontend\CareerController;
use App\Http\Controllers\Frontend\FacultyController;
use App\Http\Controllers\Frontend\EventController;
use App\Http\Controllers\Frontend\OrganizationController;
use App\Http\Controllers\Frontend\ContactController;
use App\Http\Controllers\Frontend\UserController;
use App\Http\Controllers\ServiceController;

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

Route::get('/welcome', function() { return view('welcome'); });
Route::get('/', [HomeController::class, 'index'])->name('home.index');
Route::get('/gallery', [HomeController::class, 'gallery'])->name('gallery.index');
Route::resource('/blog', BlogController::class);
Route::resource('/career', CareerController::class);
Route::resource('/alumni', AlumniController::class);
Route::resource('/faculty', FacultyController::class);
Route::resource('/event', EventController::class);
Route::resource('/about', OrganizationController::class);
Route::resource('/service', ServiceController::class);
Route::resource('/contact', ContactController::class);

// Not Page
Route::get('/disable-auth', [HomeController::class, 'disableAuth'])->name('disauth.index');

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
    Route::resource('/users/profile', UserController::class)->names('users.profile');
});

Route::group(['prefix' => 'web-admin'], function () {
    Voyager::routes();
});
