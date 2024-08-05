@extends('layoutsAdmin.master')

@section('title', 'Cập nhật tin')

@section('content')
{{-- @dd($tin->toArray()) --}}
<div class="content-body">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Cập nhật tin</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            <form action="{{ route('admin.tin.update' ,  $tin->id) }}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="mb-3 row">
                                    <label class="col-sm-2 col-form-label col-form-label-lg">Title</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="title"
                                            value="{{ $tin->title }}">
                                    </div>
                                </div>
                                @error('title')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                                <br>
                                <div class="mb-3 row">
                                    <label class="col-sm-2 col-form-label col-form-label-lg">Content</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="content"
                                            value="{{ $tin->content }}">
                                    </div>
                                </div>
                                @error('content')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                                <br>
                                <div class="mb-3 row">
                                    <label class="col-sm-2 col-form-label col-form-label-lg">Img</label>
                                    <div class="col-sm-10">
                                        <input type="file" class="form-control" name="img_url">
                                        <img src="{{ $tin->img_url }}" alt="" height="50px" width="50px">
                                    </div>
                                </div>
                                @error('img_url')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                                <br>
                                <div class="mb-3 row">
                                    <label class="col-sm-2 col-form-label col-form-label-lg">Category</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="category_id">
                                            <option value="{{$tin->category_id}}">{{$tin->category->name}}</option>
                                            <option value="">Chọn loại tin</option>
                                            @foreach($loaiTin as $t)
                                                <option value="{{ $t->id }}" {{ old('category_id') == $t->id ? 'selected' : '' }}>
                                                    {{ $t->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                @error('category_id')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror

                                <div class="mb-3 row">
                                    <label class="col-sm-2 col-form-label col-form-label-lg">Is_Featured</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="is_featured"
                                            value="{{ $tin->is_featured }}">
                                    </div>
                                </div>
                                @error('is_featured')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                                <br>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <input type="submit" name="submit" id="" value="Cập nhật"
                                            class="btn btn-primary">
                                        <input type="reset" name="" id="" value="Nhập lại"
                                            class="btn btn-primary">
                                            <a href="{{ route('admin.tin.index') }}"><input type="button" value="Danh sách"  class="btn btn-primary"></a>

                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
