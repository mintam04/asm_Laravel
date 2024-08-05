@extends('layoutsAdmin.master')

@section('title', 'Cập nhật loại tin')

@section('content')

<div class="content-body">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Cập nhật loại tin</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            <form action="{{route('admin.loaiTin.update' ,  $cate->id )}}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="mb-3 row">
                                    <label class="col-sm-2 col-form-label col-form-label-lg">Tên loại tin</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="name" value="{{ $cate->name }}">
                                    </div>
                                </div>
                                @error('name')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                                <br>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <input type="submit" name="submit" id="" value="Cập nhật"  class="btn btn-primary" >
                                        <input type="reset" name="" id="" value="Nhập lại"  class="btn btn-primary" >
                                        <a href="{{ route('admin.loaiTin.index') }}"><input type="button" value="Danh sách"  class="btn btn-primary"></a>
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
