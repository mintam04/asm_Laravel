<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Category;
use Illuminate\Http\Request;

class TinController extends Controller
{
    public function getTinTheoLoai($id)
    {
        $cate = Category::find($id);

        if (!$cate) {
            return response()->json(['message' => 'Loại tin không tồn tại'], 404);
        }

        $article = $cate->articles;

        return response()->json($article);
    }

    public function getTinChiTiet($id)
    {
        $article = Article::find($id);

        if (!$article) {
            return response()->json(['message' => 'Tin không tồn tại'], 404);
        }

        return response()->json($article);
    }
}
