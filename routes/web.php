<?php

use App\Models\Category;
use Illuminate\Support\Facades\Route;
use PHPUnit\Framework\Constraint\FileExists;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Facades\Facade;
use Spatie\YamlFrontMatter\YamlFrontMatter;
use Illuminate\Support\Facades\File;

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

Route::get('/', function () {

    return view('posts', [
        'posts' => Post::latest()->get(),
        'categories' => Category::all()
    ])->name('home');
});
Route::get('posts/{post:slug}', function (Post $post) { // Post::where(slug == $post)->firstOrFail();
    // find a post by slug and pass it to a view called "post"
    return view('post', [
        'post' => $post
    ]);
});
Route::get('categories/{category:slug}', function (Category $category) {
    return view('posts', [
        'posts' => $category->posts,
        'currentCategory' => $category,
        'categories' => Category::all()
    ])->name('category');
});
Route::get('authors/{author:username}', function (User $author) {
    return view('posts', [
        'posts' => $author->posts,
        'categories' => Category::all()
    ]);
});