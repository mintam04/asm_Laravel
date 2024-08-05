@extends('layoutsAdmin.master')

@section('title', 'Thêm tin')

@section('content')

    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Thêm tin</h4>
                        </div>
                        <div class="card-body">
                            <div class="basic-form">
                                <form action="{{ route('admin.tin.store') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3 row">
                                        <label class="col-sm-2 col-form-label col-form-label-lg">Title</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="title"
                                                value="{{ old('title') }}">
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
                                                value="{{ old('content') }}">
                                        </div>
                                    </div>
                                    @error('content')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                    <br>
                                    <div class="mb-3 row">
                                        <label class="col-sm-2 col-form-label col-form-label-lg">Img</label>
                                        <div class="col-sm-10">
                                            <input type="file" class="form-control"
                                                name="img_url"
                                                value="{{ old("img_url") }}">
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

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <input type="submit" name="submit" id="" value="Thêm mới"
                                                class="btn btn-primary">
                                            <input type="reset" name="" id="" value="Nhập lại"
                                                class="btn btn-primary">
                                            <a href=""><input type="button" value="Danh sách"
                                                    class="btn btn-primary"></a>
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
