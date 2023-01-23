<?php

use Illuminate\Support\Facades\Route;
use PHPUnit\Framework\Constraint\FileExists;
use App\Models\Post;
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




    //     $files = File::files(resource_path("posts"));

    //   $posts = collect($files)
    //     ->map(function($file){
    //         $document = YamlFrontMatter::parsefile($file);
    //         return new Post(
    //             $document->title,
    //             $document->excerpt,
    //             $document->date,
    //             $document->body(),
    //             $document->slug
    //         );
    //     });

    // $posts = array_map(function ($file) {
    //     $document = YamlFrontMatter::parsefile($file);
    //     return new Post(
    //         $document->title,
    //         $document->excerpt,
    //         $document->date,
    //         $document->body(),
    //         $document->slug
    //     );
    // }, $files);


    return view('posts', [
        'posts' => Post::all()
    ]);
});
Route::get('posts/{post}', function ($slug) {
    // find a post by slug and pass it to a view called "post"
    return view('post', [
        'post' => Post::findOrFail($slug)
    ]);
});
