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
Route::resource('/blog', BlogController::class);
Route::resource('/career', CareerController::class);
Route::resource('/alumni', AlumniController::class);
Route::resource('/faculty', FacultyController::class);
Route::resource('/event', EventController::class);
Route::resource('/about', OrganizationController::class);
Route::resource('/organization', OrganizationController::class);
Route::resource('/contact', ContactController::class);

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::group(['prefix' => 'web-admin'], function () {
    Voyager::routes();
});
