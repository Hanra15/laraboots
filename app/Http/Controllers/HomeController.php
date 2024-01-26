<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Beranda | Laravel',
            'page' => ['home', ''],
            'brand' => 'Laravel App',
        ];
        return view('frontend.home.index', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About | Laravel',
            'page' => ['about', ''],
            'brand' => 'Laravel App',
        ];
        return view('frontend.home.about', $data);
    }
}
