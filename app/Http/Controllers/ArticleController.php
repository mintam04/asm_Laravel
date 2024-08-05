<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tin = Article::with('category')->get();

        return view('admin.quanlytin.list', compact('tin'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $loaiTin = Category::all();
        return view('admin.quanlytin.add', compact('loaiTin'));

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request->toArray());
        $article = $request->validate([
            'title' => 'required',
            'content' => 'required',
            'category_id' => 'required'
        ]);

        if($request->hasFile("img_url")){
            $article['img_url'] = env('APP_URL').'/storage'.'/'.Storage::put('articles', $request->file("img_url"));
        }

        $article['views'] = 0;
        $article['is_featured'] = 0;
// dd($article);
        $tmp = Article::query()->create($article);
        return redirect()->route('admin.tin.index')
                ->with('success', 'Thêm loại tin thành công');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // $tin = Article::with('category')->find($id);
        // return view('admin.quanlytin.update', compact('tin'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $tin = Article::with('category')->find($id);
        $loaiTin = Category::all();

        return view('admin.quanlytin.update', compact('tin', 'loaiTin'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // dd($request->file('img_url'));
        $articles = $request->validate([
            'title' => 'required',
            'content' => 'required',
            'category_id' => 'required',
            'is_featured' => 'required'
        ]);
        if ($request->hasFile('img_url')) {

            $articles['img_url'] = env('APP_URL').'/storage'.'/'.Storage::put('articles', $request->file("img_url"));

        }

        $article = Article::find($id);
        $article->update($articles);

        return redirect()->route('admin.tin.index')
                ->with('success', 'Cập nhật loại tin thành công');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $article = Article::find($id);
        $article->delete();
        return redirect()->route('admin.tin.index')
        ->with('success', 'Xóa loại tin thành công');
    }
}
