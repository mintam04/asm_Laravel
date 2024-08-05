<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TinController extends Controller
{
    public function trangChu()
    {
        $listTinMoiNhat = DB::table('articles')
            ->select('articles.*', 'categories.name as category_name')
            ->leftJoin('categories', 'articles.category_id', '=', 'categories.id')
            ->orderBy('articles.created_at', 'desc')
            ->take(10)
            ->get();

        $listTrendingTop = $listTinMoiNhat->take(1);
        $listTrendingBottom = $listTinMoiNhat->slice(1, 3);
        $listTrendingRight = $listTinMoiNhat->slice(4, 6);

        $listTinNoiBat = DB::table('articles')
            ->select('articles.*', 'categories.name as category_name')
            ->leftJoin('categories', 'articles.category_id', '=', 'categories.id')
            ->where('articles.is_featured', 1)
            ->orderBy('articles.created_at', 'desc')
            ->take(4)
            ->get();

        $listTinXemNhieu = DB::table('articles')
            ->select('articles.*', 'categories.name as category_name')
            ->leftJoin('categories', 'articles.category_id', '=', 'categories.id')
            ->orderBy('articles.views', 'desc')
            ->take(5)
            ->get()
            ->map(function ($item) {
                $item->created_at = Carbon::parse($item->created_at)->format('d M Y');
                return $item;
            });

        $data = [
            'listTinMoiNhat' => $listTinMoiNhat,
            'listTinNoiBat' => $listTinNoiBat,
            'listTinXemNhieu' => $listTinXemNhieu,
            'listTrendingTop' => $listTrendingTop,
            'listTrendingBottom' => $listTrendingBottom,
            'listTrendingRight' => $listTrendingRight
        ];
        return view('welcome', $data);
    }
    public function tinChiTiet($id)
    {
        $tin = DB::table('articles')
            ->where('id', $id)
            ->first();
        if ($tin) {
            $tin->created_at = Carbon::parse($tin->created_at)->format('d M Y');
        }

        $listComments = DB::table('comments')
                    ->where('comments.article_id', $id)
                    ->select('comments.*', 'users.name as user_name')
                    ->join('users', 'comments.user_id', '=', 'users.id')
                    ->get();

        $data = ['id' => $id, 'tin' => $tin, 'listComments' => $listComments];
        return view('tinChiTiet', $data);
    }

    public function tinTrongLoai($idLT)
    {
        $listTin = DB::table('articles')
            ->select('articles.*', 'categories.name as category_name')
            ->leftJoin('categories', 'articles.category_id', '=', 'categories.id')
            ->where('category_id', $idLT)
            ->get()
            ->map(function ($item) {
                $item->created_at = Carbon::parse($item->created_at)->format('d M Y');
                return $item;
            });

        $loaiTin = DB::table('categories')->where('id', $idLT)->first();

        $data = ['idLT' => $idLT, 'listTin' => $listTin, 'loaiTin' => $loaiTin];
        return view('tinTrongLoai', $data);
    }

    public function search(Request $request)
    {
        $query = $request->input('query');

        $tin = DB::table('articles')
                    ->where('title', 'LIKE', "%{$query}%")
                    ->select('articles.*', 'categories.name as category_name')
                    ->leftJoin('categories', 'articles.category_id', '=', 'categories.id')
                    ->get()
                    ->map(function ($item) {
                        $item->created_at = Carbon::parse($item->created_at)->format('d M Y');
                        return $item;
                    });

        if ($tin->isEmpty()) {
            $data = ['message', 'Không có kết quả trùng khớp.'];
            return view('searchTin', $data);
        }

        $data = ['tin' => $tin];

        return view('searchTin', $data);
    }

    public function trangChuAdmin()
    {

        return view('admin.welcome');
    }



}
