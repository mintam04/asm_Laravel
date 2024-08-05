@extends('layoutsUser.master')
@section('title', 'Đăng nhập')

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
    <div class="row justify-content-center " style="height: 400px;">
        <div class="col-3"></div>
        <div class="col-6 mb-5 shadow rounded">
            <h2 class="text-center">Đăng nhập</h2>
            <form action="{{ route('login.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email"
                        name="user[email]" value="{{ old("user.email") }}">
                </div>
                @error('user.email')
                    <div class="text-black">{{ $message }}</div>
                @enderror
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Enter your password"
                        name="user[password]" value="{{ old("user.password") }}">
                </div>
                @error('user.password')
                    <div class="text-black">{{ $message }}</div>
                @enderror
                <div class="row">
                    <div class="col-6">
                        <button type="submit" class="btn btn-dark w-100">Đăng nhập</button>
                    </div>
                    <div class="col-6">
                        <a href="{{ route('register') }}" class="btn btn-light w-100">Đăng ký</a>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-3">
        </div>
    </div>
@endsection
