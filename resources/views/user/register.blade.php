@extends('layoutsUser.master')

@section('title', 'Đăng ký tài khoản')

@section('content')
    @if (session()->has('error'))
        <div class="alert alert-danger">
            {{ session()->get('error') }}
        </div>
    @endif
    @if (session('success'))
        <div class="alert alert-danger">
            {{ session()->get('success') }}
        </div>
    @endif

    <div class="row justify-content-center " style="height: 480px;">
        <div class="col-3"></div>
        <div class="col-6 mb-5 shadow rounded">
            <h2 class="text-center">Đăng ký</h2>
            <form action=" {{ route('register.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="username" class="form-label">Name</label>
                    <input type="text" class="form-control" id="username" placeholder="Enter your name"
                        name="user[name]" value="{{ old('user.name') }}">
                </div>
                @error('user.name')
                    <div class="text-black">{{ $message }}</div>
                @enderror
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email"
                        name="user[email]" value="{{ old('user.email') }}">
                </div>
                @error('user.email')
                    <div class="text-black">{{ $message }}</div>
                @enderror
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter your password"
                        name="user[password]" value="{{ old('user.password') }}">
                </div>
                @error('user.password')
                    <div class="text-black">{{ $message }}</div>
                @enderror
                <div class="row">
                    <div class="col-6">
                        <button type="submit" class="btn btn-dark w-100">Đăng ký</button>
                    </div>
                    <div class="col-6">
                        <a href="{{ route('login') }}" class="btn btn-light w-100">Đăng nhập</a>
                    </div>
                </div>

            </form>
        </div>
        <div class="col-3">

        </div>
    </div>
@endsection
