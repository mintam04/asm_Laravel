<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $loaiTin = Category::all();

        return view('admin.quanlyloaitin.list', compact('loaiTin'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.quanlyloaitin.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required'
        ]);
        Category::create($request->all());
        return redirect()->route('admin.loaiTin.index')
                ->with('success', 'Thêm loại tin thành công');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $cate = Category::find($id);
        return view('admin.quanlyLoaiTin.update', compact('cate'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $cate = Category::find($id);
        return view('admin.quanlyLoaiTin.update', compact('cate'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => 'required'
        ]);
        $cate = Category::find($id);
        $cate->update($request->all());

        return redirect()->route('admin.loaiTin.index')
                ->with('success', 'Cập nhật loại tin thành công');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $cate = Category::find($id);
        $cate->delete();
        return redirect()->route('admin.loaiTin.index')
        ->with('success', 'Xóa loại tin thành công');
    }
}
