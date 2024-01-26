<?php

use App\Http\Controllers\adminPostsController;
use App\Http\Controllers\adminCategoryController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Models\Posts;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/laravel', function () {
    return view('welcome');
});

// home page
Route::controller(HomeController::class)->group(function () {
    Route::get('/', 'index')->name('home');
    Route::get('/about', 'about')->name('about');
});

// posts
Route::controller(PostController::class)->group(function () {
    Route::get('/posts', 'index')->name('posts');
    Route::get('/posts/detail/{post:slug}', 'detail')->name('post/detail');

    Route::get('/categories', 'category')->name('category');

    // admin
    Route::get('/dashboard/posts/createSlug', [adminPostsController::class, 'createSlug'])->middleware('auth');
});

// auth
Route::controller(AuthController::class)->group(function () {
    // login
    Route::get('/login', 'login')->name('login')->middleware('guest');
    Route::post('/login', 'auth')->name('auth');
    // register
    Route::get('/register', 'register')->name('register.page')->middleware('guest');
    Route::post('/register', 'store')->name('register');
    // logout
    Route::get('/logout', 'logout')->name('logout');
});

// dashboard
Route::controller(DashboardController::class)->middleware('auth')->group(function () {
    Route::get('/dashboard', 'index')->name('dashboard.page');
});

Route::resource('/dashboard/posts', adminPostsController::class)->middleware('auth');
Route::resource('/dashboard/categories', adminCategoryController::class)->except('show')->middleware('is.admin');
