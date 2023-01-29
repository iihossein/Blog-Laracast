<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    // public function getRouteKeyName()
    // {
    //     return 'slug';
    // }

    // protected $with = ['category','author']    // take evry time ween call the post

    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function author(){ //author id    // -- id
        return $this->belongsTo(User::class , 'user_id');
    }
}
