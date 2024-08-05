<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreAuthRequest;
use App\Http\Requests\StoreLoginRequest;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function register()
    {
        return view('user.register');
    }
    public function login()
    {
        return view('user.login');
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/login')->with('success', 'Đăng xuất thành công!');
    }
    public function registerStore(StoreAuthRequest $request)
    {
        try {
            DB::transaction(function () use ($request) {
                $data = $request->user;
                $data['type'] = 'user';
                $data['is_admin'] = '0';

                User::create($data);
            });

            return redirect()->route('register')->with('success', 'Đăng ký thành công');

        } catch (Exception $exception) {
            // Xử lý lỗi
            return back()->with('error', $exception->getMessage());
        }
    }

    public function loginStore(StoreLoginRequest $request)
    {
        try {
            $data = $request->user;

            $credentials = [
                'email' => $data['email'],
                'password' => $data['password'],
            ];

            if (Auth::attempt($credentials)) {

                $request->session()->regenerate();

                if (Auth::user()->role === 0) {
                    return redirect()->route('trangChu')->with('success', 'Đăng nhập thành công!');
                } else if (Auth::user()->role === 1) {
                    return redirect()->route('trangChuAdmin')->with('success', 'Đăng nhập thành công!');
                }
            }else{
                return back()->withErrors([
                    'user.email' => 'Thông tin đăng nhập không hợp lệ.',
                ])->withInput();
            }


        } catch (\Exception $exception) {
            return back()->withErrors([
                'user.email' => 'Đã xảy ra lỗi không mong muốn: ' . $exception->getMessage(),
            ])->withInput();
        }
    }

}
