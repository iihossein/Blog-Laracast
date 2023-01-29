<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::truncate();
        // Post::truncate();
        // Category::truncate();

        $user =  User::factory()->create([
            'name' => 'hossss'
        ]);
        Post::factory(5)->create([
            'user_id' => $user->id
        ]);


        // \App\Models\User::factory(10)->create();
        // $user =  User::factory()->create();
        // $personal = Category::create([
        //     'name' => 'Personal',
        //     'slug' => 'personal'
        // ]);
        // $family = Category::create([
        //     'name' => 'Family',
        //     'slug' => 'family'
        // ]);
        // $work =  Category::create([
        //     'name' => 'Work',
        //     'slug' => 'work'
        // ]);

        // Post::create([
        //     'user_id' => $user->id,
        //     'category_id' => $family->id,
        //     'title' => 'the Family Post',
        //     'slug' => 'the-family-post',
        //     'excerpt' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel itaque non odio unde eaque</p>',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel itaque non odio unde eaque, ratione fuga amet perferendis odit molestiae iure maxime in officia! Amet doloribus illo molestiae nihil accusantium.</p>'
        // ]);
        // Post::create([
        //     'user_id' => $user->id,
        //     'category_id' => $work->id,
        //     'title' => 'the Work Post',
        //     'slug' => 'the-work-post',
        //     'excerpt' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel itaque non odio unde eaque</p>',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel itaque non odio unde eaque, ratione fuga amet perferendis odit molestiae iure maxime in officia! Amet doloribus illo molestiae nihil accusantium.</p>'

        // ]);
        // Post::create([
        //     'user_id' => $user->id,
        //     'category_id' => $personal->id,
        //     'title' => 'the Personal Post',
        //     'slug' => 'the-personal-post',
        //     'excerpt' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel itaque non odio unde eaque</p>',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vel itaque non odio unde eaque, ratione fuga amet perferendis odit molestiae iure maxime in officia! Amet doloribus illo molestiae nihil accusantium.</p>'
        // ]);
    }
}
