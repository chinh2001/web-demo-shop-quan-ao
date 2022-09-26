<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Category\CategoryController;
use App\Http\Controllers\Product\ProductController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\Home\HomeController;
use App\Http\Controllers\Brand\BrandController;
use App\Http\Controllers\News\NewsController;
use App\Http\Controllers\Cart\CartController;
use App\Http\Controllers\Support\SupportController;
use App\Http\Controllers\Introduces\IntroduceController;

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

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/product', [ProductController::class, 'index'])->name("product");

Route::get('/product/{id}', [ProductController::class, 'show'])->name("product.show");

Route::get('/category/{id}', [CategoryController::class, 'show'])->name("category");

Route::match(['get', 'post'], '/login', [UserController::class, 'login'])->name('login');

Route::get('/logout', [UserController::class, 'logout'])->name('logout');

Route::match(['get', 'post'], '/register', [UserController::class, 'register'])->name('signUp');

Route::get('/search', [HomeController::class, 'search'])->name('search');

Route::get('/cart', [CartController::class, 'cart'])->name('cart');

Route::get('/new', [NewsController::class, 'news'])->name('news');

Route::get('/detail_new', [NewsController::class, 'detail_new'])->name('detail_new');

Route::get('/introduces', [IntroduceController::class, 'introduces'])->name('introduces');

Route::get('/brand', [BrandController::class, 'brand'])->name('brand');

Route::get('/support', [SupportController::class, 'support'])->name('support');
// show page policy chính sách
Route::get('/policy', [SupportController::class, 'policy'])->name('policy');