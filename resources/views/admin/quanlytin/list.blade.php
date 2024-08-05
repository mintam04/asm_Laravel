@extends('layoutsAdmin.master')

@section('title', 'List tin')

@section('content')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Danh sách tin</h4>
                            <div>
                                <a href="{{ route('admin.tin.create') }}"><input type="button" value="Thêm tin"
                                        class="btn btn-primary mb-4"></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-responsive-md">
                                    <thead>
                                        <tr>
                                            <th><strong>ID</strong></th>
                                            <th><strong>category</strong></th>
                                            <th><strong>Title </strong></th>
                                            <th><strong>Content </strong></th>
                                            <th><strong>Views </strong></th>
                                            <th><strong>Img </strong></th>
                                            <th><strong>Is_featured </strong></th>
                                            <th><strong>operation</strong></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($tin as $t)
                                            <tr>
                                                <td>
                                                    <strong>{{ $t->id }}</strong>
                                                </td>
                                                <td>
                                                    <strong>{{ $t->category->name }}</strong>
                                                </td>
                                                <td>
                                                    <strong>{{ $t->title }}</strong>
                                                </td>
                                                <td>
                                                    <strong>{{ $t->content }}</strong>
                                                </td>
                                                <td>
                                                    <strong>{{ $t->views }}</strong>
                                                </td>
                                                <td>
                                                    <img src="{{ $t->img_url }}" alt=""
                                                        style="height: 50px; width=50px">
                                                </td>
                                                <td>
                                                    <strong>{{ $t->is_featured }}</strong>
                                                </td>

                                                <td>
                                                    <a href="{{ route('admin.tin.edit', $t->id) }}"
                                                        class="btn btn-primary shadow btn-xs sharp me-1"><i
                                                            class="fas fa-pencil-alt"></i></a>
                                                    <form action="{{ route('admin.tin.destroy', $t->id) }}" method="POST">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-danger shadow btn-xs sharp"><i
                                                                class="fa fa-trash"></i></button>
                                                    </form>
                                                </td>

                                            </tr>
                                        @endforeach
                                    </tbody>

                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection
