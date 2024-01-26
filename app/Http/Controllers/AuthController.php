<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class AuthController extends Controller
{
    // login
    public function login()
    {
        $data = [
            'title' => 'Login | Laravel',
            'page' => 'login',
            'brand' => 'Laravel App',
        ];
        return view('auth.login', $data);
    }

    public function auth(Request $request): RedirectResponse
    {
        $credentials = $request->validate([
            // 'email' => ['required', 'email:dns'],
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();

            return redirect()->intended('/dashboard');
        }

        return back()->with(['loginErr' => 'Login Gagal']);
    }

    // register
    public function register()
    {
        $data = [
            'title' => 'Register | Laravel App',
            'brand' => 'Laravel App',
            'page' => 'Register',
            'heading' => 'Register',
        ];
        return view('auth.register', $data);
    }

    public function store(Request $request)
    {
        $dataValidation = $request->validate([
            'name' => ['required', 'max:255'],
            'username' => ['required', 'min:3', 'max:255', 'unique:users'],
            'email' => ['required', 'email:dns', 'unique:users'],
            'password' => ['required', 'min:5', 'max:255'],
        ]);

        User::create($dataValidation);

        return redirect('/login')->with('success', 'Registration Sucess');
    }

    // logout
    public function logout(Request $request): RedirectResponse
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
