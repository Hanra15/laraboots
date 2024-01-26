<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{
    public function index()
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
}
