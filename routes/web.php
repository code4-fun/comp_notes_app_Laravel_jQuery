<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\CompanyController;
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

Route::get('/', [CompanyController::class, 'index'])->name('index');
Route::get('/company/create', [CompanyController::class, 'create'])->name('company.create');
Route::post('/company', [CompanyController::class, 'store'])->name('company.store');
Route::get('/company/show/{id}', [CompanyController::class, 'show'])->name('company.show');
Route::delete('/company/{id}', [CompanyController::class, 'destroy'])->name('company.destroy');

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::delete('/comment/{id}', [CommentController::class, 'destroy'])->name('comment.destroy');
Route::get('/comment/show/{id}', [CommentController::class, 'show'])->name('comment.show');
Route::post('/comment/create', [CommentController::class, 'create'])->name('comment.create');
Route::post('/comment', [CommentController::class, 'store'])->name('comment.store');


