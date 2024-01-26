<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $data = [
            'title' => 'Dashboard | Laravel',
            'page' => 'dashboard',
            'brand' => 'Laravel App',
        ];

        return view('backend.dashboard.index', $data);
    }
}
