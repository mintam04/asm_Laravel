@extends('layoutsAdmin.master')

@section('title', 'List loại tin')

@section('content')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Danh sách loại tin</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-responsive-md">
                                    <thead>
                                        <tr>
                                            <th><strong>ID</strong></th>
                                            <th><strong>Name </strong></th>
                                            <th><strong>operation</strong></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($loaiTin as $t)
                                        <tr>
                                            <td>
                                                <strong>{{$t->id}}</strong>
                                            </td>
                                            <td>
                                                <strong>{{$t->name}}</strong>
                                            </td>
                                            <td>
                                                <a href="{{ route('admin.loaiTin.edit', $t->id) }}" class="btn btn-primary shadow btn-xs sharp me-1"><i class="fas fa-pencil-alt"></i></a>
                                                <form action="{{ route('admin.loaiTin.destroy', $t->id) }}" method="POST">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></button>
                                                </form>
                                            </td>

                                        </tr>

                                        @endforeach
                                    </tbody>

                                </table>
                                <div>
                                    <a href="{{ route('admin.loaiTin.create') }}"><input type="button" value="Thêm loại tin"  class="btn btn-primary mb-4"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection
