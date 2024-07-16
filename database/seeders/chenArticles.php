<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class chenArticles extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $img = [
            "http://asm.test/assets/img/trending/right3.jpg",
            "http://asm.test/assets/img/trending/right1.jpg",
            "http://asm.test/assets/img/trending/right2.jpg",
            "http://asm.test/assets/img/trending/right4.jpg",
            "http://asm.test/assets/img/trending/right5.jpg",
            "http://asm.test/assets/img/trending/trending_bottom3.jpg",
            "http://asm.test/assets/img/trending/trending_bottom2.jpg",
            "http://asm.test/assets/img/trending/trending_bottom1.jpg"
        ];
        for ($i=1; $i <= 200; $i++) {
            DB::table('articles')->insert([
                [
                    'title' => 'Bài viết '.$i,
                    'content' => "Nội dung chi tiết của bài viết ".$i.". Đây là một đoạn ...",
                    'views' => mt_rand(1, 500),
                    'img_url' => Arr::random($img),
                    'category_id' => mt_rand(1, 5),
                    'created_at' => now(),
                    'updated_at' => now(),
                ],
            ]);
        }
    }
}
