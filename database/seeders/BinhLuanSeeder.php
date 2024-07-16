<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BinhLuanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 0; $i < 50; $i++) {

            DB::table('comments')->insert([
                [
                'content' => fake()->text(),
                'user_id' => fake()->numberBetween(1, 5), // Giả sử có 20 users, thay đổi theo thực tế
                'article_id' => fake()->numberBetween(306, 505), // Giả sử có 50 bài viết, thay đổi theo thực tế
                'created_at' => now(),
                'updated_at' => now(),
                ],
            ]);
        }
    }
}
